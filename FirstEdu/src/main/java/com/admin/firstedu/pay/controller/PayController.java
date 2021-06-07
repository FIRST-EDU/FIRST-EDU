package com.admin.firstedu.pay.controller;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.PayPageInfoDTO;
import com.admin.firstedu.pay.model.dto.SearchCriteria;
import com.admin.firstedu.pay.model.dto.StudentAndClassDTO;
import com.admin.firstedu.pay.model.dto.StudentAndClassInfoDTO;
import com.admin.firstedu.pay.model.service.PayService;
import com.admin.firstedu.pay.paging.PayPagenation;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	/* 서비스로 작업을 요청하기 위해 전역변수 선언 */
	private final PayService payService;
	
	/* final로 선언할 시 생성자 주입이 필요함. 의존성 주입을 위해 Autowired작성 */
	@Autowired
	public PayController(PayService payService) {
		super();
		this.payService = payService;
	}

	/* list라는 매핑명 & Get으로 요청 된 작업 수행. 수납의 목록을 select하는 기능. */
	@GetMapping("list")
	public String selectPayList(Model model, HttpServletRequest request) {
		
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = payService.selectTotalCount();
		
		int limit = 14;
		
		int buttonAmount = 5;
		
		PayPageInfoDTO pageInfo = PayPagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<PayListDTO> payList = payService.selectPayList(pageInfo);
		
		int paySum = payService.selectPaySum();
		
		model.addAttribute("payList", payList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("paySum", paySum);
		
		
		return "pay/payList";
	}
	
	/* detail이라는 매핑명 & Get으로 요청된 작업 수행. 수납 상세 페이지를 조회해오는 기능 */
	@GetMapping("detail")
	public String selectPayDetail(Model model, @RequestParam(value="no") int no) {
		
		PayListDTO payDetail = payService.selectPayDetail(no);
		
		model.addAttribute("payDetail", payDetail);
		
		return "pay/payDetail";
	}
	
	/* insert라는 매핑명 & post방식으로 넘어온 작업 수행. 수납 입력 기능 */
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
	
	/* insertView라는 매핑명 & Get으로 요청된 작업 수행. insert 시 학생목록을 출력해 주기 위한 학생목록조회 기능 */
	@GetMapping("insertView")
	public String selectStudentList(Model model) {
		
		List<StudentAndClassInfoDTO> studentList = payService.selectStudentList();
		
		model.addAttribute("studentList", studentList);
		
		return "pay/payInsert";
		
	}
	
	@GetMapping("classList")
	public String selectClassList(Model model, @RequestParam(value="stuNo") int stuNo) {
		
		List<StudentAndClassDTO> classList = payService.selectClassList(stuNo);
		
		for(StudentAndClassDTO classL : classList) {
			System.out.println(classL);
		}
		
		model.addAttribute("classList", classList);
		
		return "pay/payInsert";
	}
	
	/* update라는 매핑명 & Get으로 요청된 작업 수행. requestParam으로 넘어온 no를  DB에 전달하여 조건에 맞는 데이터를 조회해 수납수정 페이지로 전달. */
	@GetMapping("update")
	public String selectUpdatePay(Model model, @RequestParam(value="no") int no, HttpServletResponse response) throws IOException {
		
		PayListDTO payUpdate = payService.selectUpdatePay(no);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().create();
		
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(payUpdate));
		
		out.flush();
		out.close();
			
		System.out.println(payUpdate);
		return "pay/payList";
	}
	
	/* update라는 매핑명 & post 방식으로 전달 받은 데이터를 DB에 전달. 수납정보수정 기능 */
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
	
	/* delete라는 매핑명 & Get으로 요청된 작업 수행. requestParam으로 전달받은 데이터를 DB에 전달. 수납정보 삭제 기능 (DELETE로 삭제해버리지 않고 UPDATE로 상태만 변경해 화면에 출력되지 않도록 한다.)*/
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
	
	@GetMapping("search")
	public String searchPayList(Model model, HttpServletRequest request, @ModelAttribute SearchCriteria searchCriteria) {
		
		String currentPage = request.getParameter("currentPage");
			
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = payService.searchTotalCount(searchCriteria);
		
		int limit = 14;
		
		int buttonAmount = 5;
		
		PayPageInfoDTO pageInfo = PayPagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		int paySum = payService.searchPaySum(searchCriteria);
		
		if(searchCriteria.getSearchOption().equals("payYn")) {
			
			Map<String, Object> map = new HashMap<>();
			map.put("searchValue", searchCriteria.getSearchValue());
			map.put("startRow", pageInfo.getStartRow());
			map.put("endRow", pageInfo.getEndRow());
			
			List<PayListDTO> payList = payService.searchPayYnPayList(map);
			model.addAttribute("payList",payList); 
			model.addAttribute("pageInfo",pageInfo);
			model.addAttribute("searchOption", searchCriteria.getSearchOption());
			model.addAttribute("searchValue", searchCriteria.getSearchValue());
			model.addAttribute("paySum", paySum);
			
			
		}else if(searchCriteria.getSearchOption().equals("studentName")){
			
			Map<String, Object> map = new HashMap<>();
			map.put("searchValue", searchCriteria.getSearchValue());
			map.put("startRow", pageInfo.getStartRow());
			map.put("endRow", pageInfo.getEndRow()); 
			
			List<PayListDTO> payList = payService.searchStudentNamePayList(map);
			model.addAttribute("payList",payList);
			model.addAttribute("pageInfo",pageInfo);
			model.addAttribute("searchOption", searchCriteria.getSearchOption());
			model.addAttribute("searchValue", searchCriteria.getSearchValue());
			model.addAttribute("paySum", paySum);
			
		}else if(searchCriteria.getSearchOption().equals("className")) {
			
			Map<String, Object> map = new HashMap<>();
			map.put("searchValue", searchCriteria.getSearchValue());
			map.put("startRow", pageInfo.getStartRow());
			map.put("endRow", pageInfo.getEndRow());
			
			List<PayListDTO> payList = payService.searchClassNamePayList(map);
			model.addAttribute("payList",payList);
			model.addAttribute("pageInfo",pageInfo);
			model.addAttribute("searchOption", searchCriteria.getSearchOption());
			model.addAttribute("searchValue", searchCriteria.getSearchValue());
			model.addAttribute("paySum", paySum);
			
		}
		 
		return "pay/payList";
	}
	
}
