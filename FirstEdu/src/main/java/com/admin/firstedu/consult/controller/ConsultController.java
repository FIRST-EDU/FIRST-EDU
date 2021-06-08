package com.admin.firstedu.consult.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultInfoDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;
import com.admin.firstedu.consult.model.service.ConsultService;

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
	public String selectConsultList(Model model) {
		
		List<ConsultListDTO> consultList = consultService.selectConsultList();
		
		model.addAttribute("consultList", consultList);
		
		return "consult/consultList";
	}
	
	@GetMapping("search")
	public String searchConsultList(Model model, @ModelAttribute SearchCriteria searchCriteria) {
		
		List<ConsultListDTO> consultList = consultService.searchConsultList(searchCriteria);
		
		model.addAttribute("consultList", consultList);
		
		return "consult/consultList";
	}
	
	@GetMapping("detail/{no}")
	public String selectConsultDetail(Model model, @PathVariable("no") int no) {
		
		ConsultListDTO consultDetail = consultService.selectConsultDetail(no);
		
		model.addAttribute("consultDetail", consultDetail);
		
		return "consult/consultDetail";
	}
	
	@GetMapping("insertView")
	public String selectStudentList(Model model) {
		
		List<ConsultInfoDTO> studentList = consultService.selectStudentList();
		
		model.addAttribute("studentList", studentList);
		
		return "consult/consultInsert";
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
		
		return "consult/consultUpdate";
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
	
	@GetMapping("studentConsult/{no}")
	public String selectStudentConsult(Model model, @PathVariable("no") int no) {
		
		List<ConsultListDTO>  studentConsult = consultService.selectStudentConsult(no);
		
		return "";
	}
	
	@GetMapping("reserve")
	public String consultCalendar() {
		return "consult/consultCalendar";
	}
}
