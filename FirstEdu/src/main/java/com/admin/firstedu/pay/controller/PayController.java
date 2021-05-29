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
import com.admin.firstedu.pay.model.dto.StudentAndClassDTO;
import com.admin.firstedu.pay.model.dto.StudentAndClassInfoDTO;
import com.admin.firstedu.pay.model.service.PayService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	public String selectPayList(Model model) {
		
		List<PayListDTO> payList = payService.selectPayList();
		
		model.addAttribute("payList", payList);
		
		for(PayListDTO pay : payList) {
			System.out.println(pay);
		}
		
		return "pay/payList";
	}
	
	@GetMapping("detail")
	public String selectPayDetail(Model model, @RequestParam(value="no") int no) {
		
		PayListDTO payDetail = payService.selectPayDetail(no);
		
		model.addAttribute("payDetail", payDetail);
		
		return "pay/payDetail";
	}
	
	@PostMapping("insert")
	public String insertPay(Model model, @ModelAttribute PayDTO pay) {
		
		int result = payService.insertPay(pay);
		
		if(result > 0) {
			model.addAttribute("message", "수납입력에 성공하였습니다.");
		}else {
			model.addAttribute("message", "수납입력에 실패하였습니다.");
		}
		
		return "main/result";
	}
	
	@GetMapping("insertView")
	public String selectStudentList(Model model) {
		
		List<StudentAndClassInfoDTO> studentList = payService.selectStudentList();
		
		model.addAttribute("studentList", studentList);
		
		return "pay/payInsert";
		
	}
	
	@GetMapping("update")
	public String selectUpdatePay(Model model, @RequestParam(value="no") int no) {
		
		PayListDTO payUpdate = payService.selectUpdatePay(no);
		
		model.addAttribute("payUpdate", payUpdate);
				
		return "pay/payUpdate";
	}
	
	@PostMapping("update")
	public String updatePay(Model model, @ModelAttribute PayDTO pay) {
		
		int result = payService.updatePay(pay);
		
		if(result > 0) {
			model.addAttribute("message", "수납수정에 성공하였습니다.");
		}else {
			model.addAttribute("message", "수납수정에 실패하였습니다.");
		}
		
		return "main/result";
		
	}
	
	@GetMapping("delete")
	public String deletePay(Model model, @RequestParam(value="no") int no) {
		
		
		int result = payService.deletePay(no);
		
		if(result > 0) {
			model.addAttribute("message", "수납목록 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("message", "수납목록 삭제에 실패하였습니다.");
		}
		
		return "main/result";
	}
	
	@GetMapping("selectClass")
	public String selectClass(HttpServletResponse response, Model model, @RequestParam(value="stuNo") int stuNo) {
		
		response.setContentType("appication/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().create();
		
		List<StudentAndClassDTO> classNameList = payService.selectClass(stuNo);
		
		System.out.println(stuNo);
		for(StudentAndClassDTO className : classNameList) {
			System.out.println(className);
		}
		
		model.addAttribute("classNameList", gson.toJson(classNameList));
		
		return "pay/payInsert";
	}
}
