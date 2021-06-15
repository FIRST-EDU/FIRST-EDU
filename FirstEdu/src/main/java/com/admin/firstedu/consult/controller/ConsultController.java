package com.admin.firstedu.consult.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.common.paging.PageInfoDTO;
import com.admin.firstedu.common.paging.Pagenation;
import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;
import com.admin.firstedu.consult.model.dto.StudentAndClassInfoDTO;
import com.admin.firstedu.consult.model.service.ConsultService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	
	@GetMapping("detail")
	public String selectConsultDetail(Model model, @RequestParam(value="no") int no, HttpServletResponse response) throws IOException {
		
		ConsultListDTO consultDetail = consultService.selectConsultDetail(no);
		
		System.out.println(consultDetail);
		
		response.setContentType("application/json; charset=UTF-8");

		Gson gson = new GsonBuilder().create();

		PrintWriter out = response.getWriter();
		out.print(gson.toJson(consultDetail));

		out.flush();
		out.close();
		
//		model.addAttribute("consultDetail", consultDetail);
		
		return "consulting/consultList";
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

		int limit = 10;

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
	public String insertConsult(RedirectAttributes rttr, @ModelAttribute ConsultDTO consult) {
		
		int result = consultService.insertConsult(consult);
		
		if (result > 0) { 
			rttr.addFlashAttribute("msgTitle","상담 입력");
			rttr.addFlashAttribute("msgContent","상담 입력에 성공하였습니다.");
		}else {
			rttr.addFlashAttribute("msgTitle","상담 입력");
			rttr.addFlashAttribute("msgContent","상담 입력에 실패하였습니다.");
		}

		return "redirect:/consult/list";
	}
	
	@GetMapping("update/{no}")
	public String selectUpdateConsult(Model model, @PathVariable("no") int no) {
		
		ConsultListDTO consultUpdateView = consultService.selectConsultDetail(no);
		
		model.addAttribute("consultUpdateView", consultUpdateView);
		
		return "consulting/consultUpdate";
	}
	
	@PostMapping("update")
	public String UpdateConsult(RedirectAttributes rttr, @ModelAttribute ConsultDTO consult) {
		
		int result = consultService.updateConsult(consult);
		
		
		if (result > 0) { 
			rttr.addFlashAttribute("msgTitle","상담 수정");
			rttr.addFlashAttribute("msgContent","상담 수정에 성공하였습니다.");
		}else {
			rttr.addFlashAttribute("msgTitle","상담 수정");
			rttr.addFlashAttribute("msgContent","상담 수정에 실패하였습니다.");
		}

		return "redirect:/consult/list";
	}
	
	@GetMapping("delete/{no}")
	public String deleteConsult(RedirectAttributes rttr, @PathVariable("no") int no) {
		
		int result = consultService.deleteConsult(no);
		
		if (result > 0) { 
			rttr.addFlashAttribute("msgTitle","상담 삭제");
			rttr.addFlashAttribute("msgContent","상담 삭제에 성공하였습니다.");
		}else {
			rttr.addFlashAttribute("msgTitle","상담 삭제");
			rttr.addFlashAttribute("msgContent","상담 삭제에 실패하였습니다.");
		}

		return "redirect:/consult/list";
	}
	
	/* 학생 홈 화면에 띄워줄거임 */
	@GetMapping("studentConsult/{no}")
	public String selectStudentConsult(Model model, @PathVariable("no") int no) {
		
		List<ConsultListDTO>  studentConsult = consultService.selectStudentConsult(no);
		
		return "";
	}
	
}
