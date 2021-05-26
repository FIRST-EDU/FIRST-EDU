package com.admin.firstedu.pay.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.StudentDTO;
import com.admin.firstedu.pay.model.service.PayService;

@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	private final PayService payService;
	
	@Autowired
	public PayController(PayService payService) {
		super();
		this.payService = payService;
	}

	@GetMapping("list")
	public String selectPayList(HttpServletResponse response, Model model) {
		
		response.setCharacterEncoding("UTF-8");
		
		List<PayListDTO> payList = payService.selectPayList();
		
		model.addAttribute("payList", payList);
		
		return "pay/payList";
	}
	
	@PostMapping("selectStudent")
	public String selectStudent(HttpServletResponse response, Model model, @RequestParam int no) {
		
		response.setCharacterEncoding("UTF-8");
		
		String studentName = payService.selectStudent(no);
		
		model.addAttribute("studentName",studentName);
		
		return "pay/payInsert";
	}
	
	@GetMapping("insertView")
	public String selectStudentList(HttpServletResponse response, Model model) {
		
		response.setCharacterEncoding("UTF-8");
		
		List<StudentDTO> studentList = payService.selectStudentList();
		
		model.addAttribute("studentList", studentList);
		
		return "pay/payInsert";
		
	}
	
	@PostMapping("insert")
	public String insertPay(HttpServletResponse response, Model model, @ModelAttribute PayDTO pay) {
		
		response.setCharacterEncoding("UTF-8");
		
		int result = payService.insertPay(pay);
		
		if(result > 0) {
			model.addAttribute("SuccessMessage", "수납입력에 성공하였습니다.");
		}else {
			model.addAttribute("FailedMessage", "수납입력에 실패하였습니다.");
		}
		
		return "result";
	}
	
	@PostMapping("delete")
	public String updatePay(HttpServletResponse response, Model model, @ModelAttribute PayDTO pay) {
		
		response.setCharacterEncoding("UTF-8");
		
		int result = payService.deletePay(pay);
		
		if(result > 0) {
			model.addAttribute("SuccessMessage", "수납목록 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("FailedMessage", "수납목록 삭제에 실패하였습니다.");
		}
		
		return "result";
	}
}
