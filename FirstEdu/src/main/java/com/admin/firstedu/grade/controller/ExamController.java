package com.admin.firstedu.grade.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.common.exception.ExamException;
import com.admin.firstedu.common.paging.Pagenation;
import com.admin.firstedu.grade.model.dto.ClassExamInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamListInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;
import com.admin.firstedu.grade.model.dto.ExamSearchResultDTO;
import com.admin.firstedu.grade.model.dto.PageInfoDTO;
import com.admin.firstedu.grade.model.dto.ScoreFullInfoDTO;
import com.admin.firstedu.grade.model.service.ExamService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/grade/*")
public class ExamController {

	private final ExamService examService;

	@Autowired
	public ExamController(ExamService examService) {
		this.examService = examService;
	}
	
	/* 시험 관리 첫 화면 - 시험 일정 조회(달력) */
	@GetMapping("/exam/list")
	public String selectExamList(Model model) {
		
		List<ExamListInfoDTO> examList = examService.selectExamScheduleList();
		
		for(ExamListInfoDTO exam : examList) {
			System.out.println(exam);
		}
		
		List<ExamCategoryFullInfoDTO> examCategoryList = examService.selectExamCategoryList();
		for(ExamCategoryFullInfoDTO examCategory : examCategoryList) {
			System.out.println(examCategory);
		}
		
		List<ClassExamInfoDTO> classList = examService.selectClassList();
		
		model.addAttribute("examList", examList);
		model.addAttribute("examCategoryList", examCategoryList);
		model.addAttribute("classList", classList);
		
		return "grade/examList";
	}
	
	/* 시험 일정 달력 조회 및 검색 */
	@GetMapping(value="/exam/search/schedule", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchExamList(@ModelAttribute ExamSearchCriteria searchCriteria) {
		System.out.println(searchCriteria);
		List<ExamListInfoDTO> examList = examService.searchExamScheduleList(searchCriteria);
		Gson gson = new GsonBuilder()
						.setDateFormat("yyyy-MM-dd")
						.setPrettyPrinting()
						.create();
		
		return gson.toJson(examList);
	}

	/* 시험 목록 테이블 조회 및 검색(페이징 처리) */
	@GetMapping(value="/exam/search/{pageNo}", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchExamList(@ModelAttribute ExamSearchCriteria searchCriteria,
								 @PathVariable("pageNo") int pageNo) {
		
		/* 전체 게시물 개수 */
		int totalCount = examService.selectTotalCount(searchCriteria);
		int limit = 10;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		searchCriteria.setPageInfo(pageInfo);
		
		List<ExamListInfoDTO> examList = examService.searchExamList(searchCriteria);
		
		ExamSearchResultDTO searchResult = new ExamSearchResultDTO(examList, pageInfo);
		
		Gson gson = new GsonBuilder()
				.setDateFormat("yyyy-MM-dd")
				.setPrettyPrinting()
				.create();
		
		return gson.toJson(searchResult);
	}

	/* 시험 일정 및 성적 기본 정보 등록 */
	@PostMapping("/exam/regist")
	public String registExamAndScoreBasicInfo(@ModelAttribute ExamDTO exam,
							 RedirectAttributes rttr)
									 throws ExamException {
		exam.setCategoryNo(4);
		exam.setName("test");
		exam.setStartDate(new java.sql.Date(System.currentTimeMillis()));
		exam.setClassCode("TTE1");
//		exam.setSchool("더조은고등학교");
		if(!examService.registExamAndScoreBasicInfo(exam)) {
			throw new ExamException("시험 일정 등록에 실패하였습니다.");
		}
		
		rttr.addFlashAttribute("message", "시험 일정이 등록되었습니다.");
		
		return "redirect:/grade/exam";
	}
	
	/* 시험 일정 수정 */
	@PostMapping("/exam/modify")
	public String updateExam(@ModelAttribute ExamDTO exam,
							 RedirectAttributes rttr)
									 throws ExamException {
		exam.setNo(42);
//		exam.setName("modify test");
		exam.setStartDate(new java.sql.Date(new java.util.Date().getTime()));
		exam.setSchool("완전조은고등학교");
		
		if(!examService.modifyExam(exam)) {
			throw new ExamException("시험 일정 수정에 실패하였습니다.");
		}
		
		rttr.addFlashAttribute("message", "시험 일정이 수정되었습니다.");
		
		return "redirect:/grade/exam";
	}

	/* 시험 일정 삭제 */
	@PostMapping("/exam/remove")
	public String removeExam(@RequestParam(required=false, defaultValue="0") int examNo,
							 RedirectAttributes rttr)
									 throws ExamException {
//		int examNo = 1;
		if(!examService.removeExam(examNo)) {
			throw new ExamException("시험 일정 삭제에 실패하였습니다.");
		}
		
		rttr.addFlashAttribute("message", "시험 일정이 삭제되었습니다.");
		
		return "redirect:/grade/exam";
	}
	
	/* 학원 시험 카테고리 등록 */
	@PostMapping("/exam/category/regist")
	public String registExamCategory(@ModelAttribute ExamCategoryDTO examCategory,
									 RedirectAttributes rttr)
											 throws ExamException {
		examCategory.setName("RegistTest");
		if(!examService.registExamCategory(examCategory)) {
			throw new ExamException("시험 종류 추가에 실패하였습니다.");
		}
		
		rttr.addFlashAttribute("message", "시험 종류가 추가되었습니다.");
		
		return "redirect:/grade/exam";
	}
	
	/* 시험 카테고리 수정 */
	@PostMapping("/exam/category/modify")
	public String modifyExamCategory(@ModelAttribute ExamCategoryDTO examCategory,
									 RedirectAttributes rttr)
											 throws ExamException {
		examCategory.setNo(2);
		examCategory.setName("ModifyTest");
		examCategory.setColorNo(3);
		if(!examService.modifyExamCategory(examCategory)) {
			throw new ExamException("시험 종류 카테고리 수정에 실패하였습니다.");
		}
		
		rttr.addFlashAttribute("message", "시험 종류 카테고리가 수정되었습니다.");
		
		return "redirect:/grade/exam";
	}
	
	/* 학원 시험 카테고리 삭제 */
	@PostMapping("/exam/category/remove")
	public String removeExamCategory(@RequestParam(required=false, defaultValue="0") int examCategoryNo,
									 RedirectAttributes rttr)
											 throws ExamException {
		examCategoryNo = 8;
		if(!examService.removeExamCategory(examCategoryNo)) {
			throw new ExamException("시험 종류 카테고리 삭제에 실패하였습니다.");
		}
		
		rttr.addFlashAttribute("message", "시험 종류 카테고리가 삭제되었습니다.");
		
		return "redirect:/grade/exam";
	}
	
	@GetMapping("/exam/{examNo}")
	public String examDetail(@PathVariable("examNo") int examNo, Model model) {
		
		ExamListInfoDTO exam = examService.selectExam(examNo);
		System.out.println(exam);
		List<ScoreFullInfoDTO> scoreList = examService.selectScoreList(examNo);
		System.out.println(scoreList);
		return "grade/examDetail";
	}
	
}
