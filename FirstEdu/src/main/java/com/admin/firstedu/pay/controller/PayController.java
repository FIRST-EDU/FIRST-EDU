package com.admin.firstedu.pay.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.firstedu.pay.model.dto.PayDTO;
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
		
		List<PayDTO> payList = payService.selectPayList();
		
		model.addAttribute("payList", payList);
		
		return "payList";
	}
}
