package com.admin.firstedu.student.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.common.exception.StudentDeleteException;
import com.admin.firstedu.common.exception.StudentModifyException;
import com.admin.firstedu.common.exception.StudentRegistException;
import com.admin.firstedu.common.paging.Pagenation;
import com.admin.firstedu.student.model.dto.ClassBasicInfoDTO;
import com.admin.firstedu.student.model.dto.ClassListDTO;
import com.admin.firstedu.student.model.dto.GradeDTO;
import com.admin.firstedu.student.model.dto.PageInfoDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentFullInfoDTO;
import com.admin.firstedu.student.model.dto.StudentQuitListDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;
import com.admin.firstedu.student.model.dto.StudentSearchCriteria;
import com.admin.firstedu.student.model.dto.StudentSearchQuitResultDTO;
import com.admin.firstedu.student.model.dto.StudentSearchResultDTO;
import com.admin.firstedu.student.model.service.StudentService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/student/*")
public class StudentController {

	private final StudentService studentService;
	
	@Autowired
	public StudentController(StudentService studentService) {
		this.studentService = studentService;
	}
	
	@InitBinder public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	/* 원생 등록 페이지로 이동 */
	@GetMapping("/regist")
	public String regist(Model model) {
		
		List<ClassBasicInfoDTO> classList = studentService.selectClassList();
		model.addAttribute("classList", classList);
		
		return "student/studentRegistForm";
	}
	
	/* 원생 등록 */
	@PostMapping("/regist")
	public String registStudent(@ModelAttribute StudentDTO student,
								@ModelAttribute ClassListDTO classList,
								HttpServletRequest request,
								RedirectAttributes rttr)
									throws StudentRegistException {
		String address = request.getParameter("basicAddress") + "$" + request.getParameter("detailAddress");
		student.setAddress(address);
		
		if(("1").equals(student.getGender())) {
			student.setGender("여");
		} else if(("2").equals(student.getGender())) {
			student.setGender("남");
		}
		
		if(!studentService.registStudent(student, classList)) {
				throw new StudentRegistException("원생 등록에 실패하였습니다. 잠시 후 다시 시도해 주세요.");
		}
		
		rttr.addFlashAttribute("messageTitle", "원생 등록");
		rttr.addFlashAttribute("messageBody", student.getStudentName() + " 학생을 등록하였습니다.");
		
		return "redirect:/student/regist/list";
	}
	
	/* 원생 관리 첫 화면 - 재원생 조회 (+페이징 처리) */
	@GetMapping("/regist/list")
	public String StudentRegistList(Model model) {
		
		/* 페이지 번호 */
		int pageNo = 1;

		/* 전체 원생 수 조회 */
		int totalCount = studentService.selectTotalCount();
		
		int limit = 10;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		/* 학생 목록 조회 */
		List<StudentRegistListDTO> studentList = studentService.selectStudentRegistList(pageInfo);
		
		/* 검색용 학교, 학년, 강의 목록 조회 */
		List<SchoolDTO> schoolList = studentService.selectSchoolList();
		List<GradeDTO> gradeList = studentService.selectGradeList();
		List<ClassBasicInfoDTO> classList = studentService.selectClassList();
		
		model.addAttribute("studentList", studentList);
		model.addAttribute("schoolList", schoolList);
		model.addAttribute("gradeList", gradeList);
		model.addAttribute("classList", classList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "student/studentRegistList";
	}
	
	/* 헤더 학생명 검색 (+페이징 처리) */
	@PostMapping("/regist/header/search")
	public String SearchStudentNameList(@ModelAttribute StudentSearchCriteria searchCriteria, Model model) {
		
		/* 페이지 번호 */
		int pageNo = 1;
		
		int totalCount = studentService.searchTotalCount(searchCriteria);
		int limit = 10;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		searchCriteria.setPageInfo(pageInfo);
		/* 학생 목록 조회 */
		List<StudentRegistListDTO> studentList = studentService.searchStudentRegistList(searchCriteria);
		
		/* 검색용 학교, 학년, 강의 목록 조회 */
		List<SchoolDTO> schoolList = studentService.selectSchoolList();
		List<GradeDTO> gradeList = studentService.selectGradeList();
		List<ClassBasicInfoDTO> classList = studentService.selectClassList();
		
		model.addAttribute("studentList", studentList);
		model.addAttribute("schoolList", schoolList);
		model.addAttribute("gradeList", gradeList);
		model.addAttribute("classList", classList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "student/studentRegistList";
	}
	
	/* 재원생 조회 및 검색 (+페이징 처리) */
	@GetMapping(value="/regist/search/{pageNo}", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchStudentList(@ModelAttribute StudentSearchCriteria searchCriteria,
								 @PathVariable("pageNo") int pageNo) {
		
		/* 전체 게시물 개수 */
		int totalCount = studentService.searchTotalCount(searchCriteria);
		int limit = 10;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		searchCriteria.setPageInfo(pageInfo);
		
		/* 전화번호 검색 시 "-" 없애주기 */
		String searchOption = searchCriteria.getSearchOption();
		if(("parentsPhone").equals(searchOption) || ("studentPhone").equals(searchOption)) {
			String searchValue = searchCriteria.getSearchValue().replace("-", "");
			searchCriteria.setSearchValue(searchValue);
		}

		List<StudentRegistListDTO> studentList = studentService.searchStudentRegistList(searchCriteria);
		
		StudentSearchResultDTO searchResult = new StudentSearchResultDTO(studentList, pageInfo);
		
		Gson gson = new GsonBuilder()
					   .setDateFormat("yyyy-MM-dd")
					   .create();
		
		return gson.toJson(searchResult);
	}
	
	/* 퇴원생 조회 첫 화면 (+ 페이징 처리) */
	@GetMapping("/quit/list")
	public String StudentQuitList(Model model) {
		
		/* 페이지 번호 */
		int pageNo = 1;

		/* 전체 원생 수 조회 */
		int totalCount = studentService.selectQuitTotalCount();
		
		int limit = 10;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		/* 학생 목록 조회 */
		List<StudentQuitListDTO> studentList = studentService.selectStudentQuitList(pageInfo);
		
		/* 검색용 학교, 학년, 강의 목록 조회 */
		List<SchoolDTO> schoolList = studentService.selectQuitStudentSchoolList();
		List<GradeDTO> gradeList = studentService.selectGradeList();
		
		model.addAttribute("studentList", studentList);
		model.addAttribute("schoolList", schoolList);
		model.addAttribute("gradeList", gradeList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "student/studentQuitList";
	}
	
	/* 퇴원생 조회 및 검색 (+페이징 처리) */
	@GetMapping(value="/quit/search/{pageNo}", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchQuitStudentList(@ModelAttribute StudentSearchCriteria searchCriteria,
								 	    @PathVariable("pageNo") int pageNo) {
		
		/* 전체 게시물 개수 */
		int totalCount = studentService.searchQuitTotalCount(searchCriteria);
		int limit = 10;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		searchCriteria.setPageInfo(pageInfo);
		
		/* 전화번호 검색 시 "-" 없애주기 */
		String searchOption = searchCriteria.getSearchOption();
		if(("parentsPhone").equals(searchOption) || ("studentPhone").equals(searchOption)) {
			String searchValue = searchCriteria.getSearchValue().replace("-", "");
			searchCriteria.setSearchValue(searchValue);
		}

		List<StudentQuitListDTO> studentList = studentService.searchStudentQuitList(searchCriteria);
		
		StudentSearchQuitResultDTO searchResult = new StudentSearchQuitResultDTO(studentList, pageInfo);
		
		Gson gson = new GsonBuilder()
					   .setDateFormat("yyyy-MM-dd")
					   .create();
		
		return gson.toJson(searchResult);
	}
	
	/* 원생 상세 페이지 조회용 */
	@GetMapping("/{studentNo}")
	public String studentDetail(@PathVariable("studentNo") int studentNo, Model model) {
		
		StudentFullInfoDTO student = studentService.selectStudentFullInfo(studentNo);
		String address = student.getAddress().replace("$", " ");
		student.setAddress(address);
		model.addAttribute("student", student);
		
		return "student/studentDetail";
	}	
	
	/* 원생 정보 수정 페이지로 이동 */
	@GetMapping("/modify/{studentNo}")
	public String selectModifyStudent(@PathVariable("studentNo") int studentNo, Model model) {
		StudentFullInfoDTO student = studentService.selectStudentFullInfo(studentNo);
		List<ClassBasicInfoDTO> classList = studentService.selectClassList();
		
		model.addAttribute("student", student);
		model.addAttribute("classList", classList);
		
		return "student/studentModifyForm";
	}
	
	/* 원생 정보 수정 */
	@PostMapping("/modify")
	public String modifyStudent(@ModelAttribute StudentDTO student,
								@ModelAttribute ClassListDTO classList,
								HttpServletRequest request,
								RedirectAttributes rttr)
										throws StudentModifyException {
		
		String address = request.getParameter("basicAddress") + "$" + request.getParameter("detailAddress");
		student.setAddress(address);
		
		if(("1").equals(student.getGender())) {
			student.setGender("여");
		} else if(("2").equals(student.getGender())) {
			student.setGender("남");
		}
		
		System.out.println(classList);
		System.out.println(student);
		
		if(!studentService.modifyStudent(student, classList)) {
			throw new StudentModifyException("원생 정보 수정에 실패하였습니다. 잠시 후 다시 시도해 주세요.");
		}
		
		rttr.addFlashAttribute("messageTitle", "원생 정보 수정");
		rttr.addFlashAttribute("messageBody", student.getStudentName() + " 학생의 정보를 수정하였습니다.");
		
		return "redirect:/student/" + student.getNo();
	}
	
	/* 원생 정보 삭제 */
	@GetMapping("/delete/{studentNo}")
	public String deleteStudent(@PathVariable("studentNo") int studentNo, RedirectAttributes rttr) throws StudentDeleteException {
		
		if(!studentService.deleteStudent(studentNo)) {
			throw new StudentDeleteException("원생 퇴원 처리에 실패하였습니다. 잠시 후 다시 시도해 주세요.");
		}

		rttr.addFlashAttribute("messageTitle", "원생 퇴원 처리");
		rttr.addFlashAttribute("messageBody", "퇴원 처리하였습니다.");
		
		return "redirect:/student/quit/list";
	}
	
	/* 재원생으로 상태 변경 */
	@GetMapping("/change/status/{selectedStudentNo}")
	public String changeStudentStatus(@PathVariable("selectedStudentNo") int studentNo, RedirectAttributes rttr) throws StudentDeleteException {
		
		if(!studentService.updateStudentStatus(studentNo)) {
			throw new StudentDeleteException("원생 상태 변경에 실패하였습니다. 잠시 후 다시 시도해 주세요.");
		}
		
		rttr.addFlashAttribute("messageTitle", "원생 상태 변경");
		rttr.addFlashAttribute("messageBody", "재원생으로 변경되었습니다.");
		
		return "redirect:/student/regist/list";
	}
}
