package com.admin.firstedu.consult.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.PageInfoDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;
import com.admin.firstedu.consult.model.dto.StudentAndClassInfoDTO;
import com.admin.firstedu.consult.model.service.ConsultService;
import com.admin.firstedu.paging.Pagenation;

@Controller
@RequestMapping("/consult/*")
public class ConsultController {

	private final ConsultService consultService;

	@Autowired
	public ConsultController(ConsultService consultService) {
		super();
		this.consultService = consultService;
	}
	
	@GetMapping("list")
	public String selectConsultList(Model model, HttpServletRequest request, @ModelAttribute SearchCriteria searchCriteria) {
		
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;

		if (currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if (pageNo <= 0) {
				pageNo = 1;
			}
		}

		/* 상담목록 페이징 */
		int totalCount = consultService.searchTotalCount(searchCriteria);

		int limit = 12;

		int buttonAmount = 5;

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> map = new HashMap<>();
		map.put("searchCriteria",searchCriteria);
		map.put("pageInfo", pageInfo);
		
		List<ConsultListDTO> consultList = consultService.selectConsultList(map);
		
		/* 금일 상담 수 */
		int consultTodayTotal = consultService.selectTodayTotal();
		
		model.addAttribute("consultList", consultList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("searchOption", searchCriteria.getSearchOption());
		model.addAttribute("searchValue", searchCriteria.getSearchValue());
		model.addAttribute("consultTodayTotal", consultTodayTotal);
		
		return "consulting/consultList";
	}
	
	@GetMapping("detail/{no}")
	public String selectConsultDetail(Model model, @PathVariable("no") int no) {
		
		ConsultListDTO consultDetail = consultService.selectConsultDetail(no);
		
		model.addAttribute("consultDetail", consultDetail);
		
		return "consulting/consultDetail";
	}
	
	@GetMapping("insertView")
	public String selectStudentList(Model model, HttpServletRequest request,
			@ModelAttribute SearchCriteria searchCriteria) {
		
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;

		if (currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if (pageNo <= 0) {
				pageNo = 1;
			}
		}

		int totalCount = consultService.selectStudentTotal(searchCriteria);

		int limit = 11;

		int buttonAmount = 5;

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> map = new HashMap<>();
		map.put("searchCriteria",searchCriteria);
		map.put("pageInfo", pageInfo);
		
		List<StudentAndClassInfoDTO> studentList = consultService.selectStudentList(map);
		
		
		model.addAttribute("studentList", studentList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("studentTotal", totalCount);
		model.addAttribute("searchOption", searchCriteria.getSearchOption());
		model.addAttribute("searchValue", searchCriteria.getSearchValue());
		
		return "consulting/consultInsert";
	}
	
	@PostMapping("insert")
	public String insertConsult(Model model, @ModelAttribute ConsultDTO consult) {
		
		int result = consultService.insertConsult(consult);
		
		if(result > 0) {
			model.addAttribute("message", "상담입력에 성공하였습니다");
		}else {
			model.addAttribute("message", "상담입력에 실패하였습니다");
		}
		
		return "main/result";
	}
	
	@GetMapping("update/{no}")
	public String selectUpdateConsult(Model model, @PathVariable("no") int no) {
		
		ConsultListDTO consultUpdateView = consultService.selectConsultDetail(no);
		
		model.addAttribute("consultUpdateView", consultUpdateView);
		
		return "consulting/consultUpdate";
	}
	
	@PostMapping("update")
	public String UpdateConsult(Model model, @ModelAttribute ConsultDTO consult) {
		
		int result = consultService.updateConsult(consult);
		
		
		if(result > 0) {
			model.addAttribute("message", "상담내용 수정에 성공하였습니다");
		}else {
			model.addAttribute("message", "상담내용 수정에 실패하였습니다");
		}
		
		return "main/result";
	}
	
	@GetMapping("delete/{no}")
	public String deleteConsult(Model model, @PathVariable("no") int no) {
		
		int result = consultService.deleteConsult(no);
		
		if(result > 0) {
			model.addAttribute("message", "상담내용 삭제에 성공하였습니다");
		}else {
			model.addAttribute("message", "상담내용 삭제에 실패하였습니다");
		}
		
		return "main/result";
	}
	
	/* 학생 홈 화면에 띄워줄거임 */
	@GetMapping("studentConsult/{no}")
	public String selectStudentConsult(Model model, @PathVariable("no") int no) {
		
		List<ConsultListDTO>  studentConsult = consultService.selectStudentConsult(no);
		
		return "";
	}
	
	@GetMapping("reserve")
	public String consultCalendar() {
		return "consulting/consultCalendar";
	}
}
