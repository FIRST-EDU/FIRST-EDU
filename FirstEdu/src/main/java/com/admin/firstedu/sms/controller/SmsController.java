package com.admin.firstedu.sms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.firstedu.common.paging.PageInfoDTO;
import com.admin.firstedu.common.paging.Pagenation;
import com.admin.firstedu.pay.model.dto.SearchCriteria;
import com.admin.firstedu.sms.model.dto.SmsAndStudentDTO;
import com.admin.firstedu.sms.model.dto.SmsDTO;
import com.admin.firstedu.sms.model.service.SmsService;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
@RequestMapping("/sms/*")
public class SmsController {
	
	private final SmsService smsService;
	
	@Autowired
	public SmsController(SmsService smsService) {
		super();
		this.smsService = smsService;
	}

	@GetMapping("list")
	public String showSMS(Model model, HttpServletRequest request, @ModelAttribute SearchCriteria searchCriteria) {

		String currentPage = request.getParameter("currentPage");

		int pageNo = 1;

		if (currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);

			if (pageNo <= 0) {
				pageNo = 1;
			}
		}

		int totalCount = smsService.selectTotalCount(searchCriteria);

		int limit = 10;

		int buttonAmount = 5;

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);

		Map<String, Object> map = new HashMap<>();
		map.put("searchCriteria",searchCriteria);
		map.put("startRow", pageInfo.getStartRow());
		map.put("endRow", pageInfo.getEndRow());
		
		List<SmsAndStudentDTO> smsList = smsService.selectSmsList(map);
		
		for(SmsAndStudentDTO sms : smsList)	{
			System.out.println(sms);
		}

		model.addAttribute("smsList", smsList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("searchOption", searchCriteria.getSearchOption());
		model.addAttribute("searchValue", searchCriteria.getSearchValue());
		model.addAttribute("smsTotal", totalCount);

		return "sms/smsList";
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

		int totalCount = smsService.selectStudentTotal(searchCriteria);

		int limit = 11;

		int buttonAmount = 5;

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> map = new HashMap<>();
		map.put("searchCriteria",searchCriteria);
		map.put("pageInfo", pageInfo);
		
		List<SmsAndStudentDTO> studentList = smsService.selectStudentList(map);
		
		model.addAttribute("studentList", studentList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("studentTotal", totalCount);
		model.addAttribute("searchOption", searchCriteria.getSearchOption());
		model.addAttribute("searchValue", searchCriteria.getSearchValue());
		
		return "sms/sendSms";
	}

	@PostMapping("insert")
	public String sendSMS(Model model, @ModelAttribute SmsDTO sms) throws CoolsmsException {

		String api_key = "NCSYMSYSQNQ8ANEH";
		String api_secret = "P0VG3UNOBGDAS9RBJ4NWWG7IHMLZAS4N";

		Message coolsms = new Message(api_key, api_secret);

		HashMap<String, String> params = new HashMap<String, String>();

		params.put("to", (String)sms.getParentsPhone()); // 받는 사람 번호
		params.put("from", "01045922509"); // 발신번호
		params.put("type", "sms"); // 문자 타입
		params.put("text", (String)sms.getSmsContent()); // 문자내용
		
		int result = smsService.sendMessage(sms);

		 try {
		    	//send() 는 메시지를 보내는 함수  
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }

		return "redirect:/sms/list";
	}
	
	@GetMapping("detail/{no}")
	public String smsDetail(Model model, @PathVariable("no") int no) {
		
		SmsAndStudentDTO smsDetail = smsService.selectSmsDetail(no);
		
		model.addAttribute("smsDetail", smsDetail);
		
		return "sms/smsDetail";
	}
}
