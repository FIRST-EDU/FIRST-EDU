package com.admin.firstedu.classInfo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.coyote.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.classInfo.model.dto.ClassAndInfoDTO;
import com.admin.firstedu.classInfo.model.dto.ClassDTO;
import com.admin.firstedu.classInfo.model.dto.PageInfoDTO;
import com.admin.firstedu.classInfo.model.dto.SearchCriteriaDTO;
import com.admin.firstedu.classInfo.model.service.ClassInfoService;
import com.admin.firstedu.common.exception.MemberRegistException;
import com.admin.firstedu.common.exception.MemberUpdateExcption;
import com.admin.firstedu.common.paging.Pagenation;
import com.admin.firstedu.member.model.dto.MemberDTO;
import com.admin.firstedu.member.model.dto.TeacherAndJobDTO;


@Controller
@RequestMapping("/classInfo/*")
@SessionAttributes("classGroup")
public class ClassInfoController {
	
	private final ClassInfoService classListService; 
	
	@Autowired
	public ClassInfoController(ClassInfoService classListService) {
		
		this.classListService = classListService;
		
	}
	
	/*과목목록*/
	@GetMapping("/classList")
	   public String selectClassList(Model model) {
	      
	      List<ClassAndInfoDTO> classGroup = classListService.selectClsssAndInfo();
	      
	      model.addAttribute("classGroup", classGroup);
	      
	      for(ClassAndInfoDTO list : classGroup) {
//	         System.out.println(list);
	      }
	      
	      return "classInfo/classList";
	   }
	
	
	/*과목목록등록*/
	@GetMapping("/classRegist")
	public void classRegistForm() {
	}

	@PostMapping("/classRegist")
	public String classRegist(@ModelAttribute ClassDTO classDTO, HttpServletRequest request, RedirectAttributes rttr)
			throws MemberRegistException {

		if(!classListService.classRegist(classDTO)){
			throw new MemberRegistException(" 실패!");
		}
		
		rttr.addFlashAttribute("message", "과목 수정에 성공하셨습니다.");

		return "redirect:/classInfo/classList";
	}
	
	
	/*과목목록수정*/
	@GetMapping("/classUpdate/{no}")
	public String updateForm(Model model, @PathVariable("no") int no) 
			throws  MemberUpdateExcption{
		System.out.println("no : " + no);
		ClassAndInfoDTO classUpdate = classListService.selectUpdateMember(no);
		
		model.addAttribute("classUpdate", classUpdate);

		System.out.println(classUpdate);
		
		return "classInfo/classUpdate";

	}
	
	
	@PostMapping("/classUpdate")
	public String classUpdate(@ModelAttribute ClassDTO classDTO, Model model, RedirectAttributes rttr) throws MemberRegistException 
	{
		
		if(!classListService.classUpdate(classDTO)){
			throw new MemberRegistException(" 실패!");
		}
		
		rttr.addFlashAttribute("message", "수정에 성공하셨습니다.");
		
		return "redirect:/classInfo/classList";

	}
	
	/*과목 삭제*/
//	@GetMapping("delete/{no}")
//	public String deleteClass(@PathVariable("no") int no, RedirectAttributes rttr) throws MemberUpdateExcption {
//		
//		if(!classListService.deleteClass(no)) {
//			throw new MemberUpdateExcption("실패!");
//		}
//		
//		rttr.addFlashAttribute("message", "삭제 성공");
//		
//		return "redirect:/classInfo/delete";
//	}
	
		
	/*과목리스트*/
	@GetMapping("/detail/{no}")
	public String selectDetailClass(Model model, @PathVariable("no") int no) {
		
		ClassAndInfoDTO classDetail = classListService.selectClassDetail(no);
		
		model.addAttribute("classDetail", classDetail);
		
		System.out.println(classDetail);

		return "classInfo/classDetail";
	}
	
	
	/*시간표테이블*/
	@GetMapping("/timeTable")
	   public String selectTimeTable(Model model) {
	      
	      List<ClassAndInfoDTO> tableTime = classListService.selectTimeTable();
	      
	      model.addAttribute("tableTime", tableTime);
	      
	      for(ClassAndInfoDTO time : tableTime) {
	         System.out.println(time);
	      }
	      
	      return "classInfo/timeTable";
	   }
	

	/* 검색 */
//	@GetMapping("search")
//	public String searchClass(Model model,SearchCriteriaDTO searchCriteria) {
//		
//		System.out.println("searchList");
//		
//		List<ClassAndInfoDTO> classGroup = classListService.searchClass(searchCriteria);
//		model.addAttribute("classGroup", classGroup);
//		
//		 for(ClassAndInfoDTO search : classGroup) {
//	         System.out.println("searchList " + search);
//	      }
//		 
//		return "classInfo/classList";
//	}
	
	
	@GetMapping("searchList")
	public String searchClassList(@ModelAttribute SearchCriteriaDTO searchCriteria, HttpServletRequest request, Model model, RedirectAttributes rttr) {
		
		
		String condition = request.getParameter("searchCondition");
		String value = request.getParameter("searchValue");
	
		
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		
		int totalCount = classListService.searchClassCount(searchCriteria);
		
		System.out.println("totalSearchCount : " + totalCount);
		
		int limit = 10;
		
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("searchCriteria", searchCriteria);
		map.put("startRow", pageInfo.getStartRow());
		map.put("endRow", pageInfo.getEndRow());
		
		List<ClassAndInfoDTO> classInfoList = classListService.searchClassList(map);
		
		
		for(ClassAndInfoDTO b : classInfoList) {
			System.out.println("ClassAndInfoDTO : " + b);			
		}
		
		model.addAttribute("classGroup", classInfoList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("searchCondition", searchCriteria.getSearchCondition());
		model.addAttribute("searchValue", searchCriteria.getSearchValue());
		
		
		rttr.addFlashAttribute("message", "게시물 결과 조회 성공");
		
		System.out.println("pageInfo : " + pageInfo);
		
		return "classInfo/classList";
		
	}
	
	/* 페이징처리 */
	
	 @GetMapping("list")
	 public String selectClassList(@ModelAttribute SearchCriteriaDTO searchCriteria, HttpServletRequest request, Model model, RedirectAttributes rttr) throws MemberRegistException {

	 String currentPage = request.getParameter("currentPage");
	 
	 
	 int pageNo = 1;
	  
	 if(currentPage != null && !"".equals(currentPage)) {
		 pageNo = Integer.valueOf(currentPage);
	 
	 if(pageNo <= 0) {
	    pageNo = 1; 
	    }
	 }
	 
	 int totalCount = classListService.selectTotalCount(searchCriteria); 
	 
	 int limit = 10;
	 
	 int buttonAmount = 5;
	 
	 System.out.println("게시물 수 " + totalCount);
	
	 PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount); 
	 System.out.println("페이징 처리와 관련되 정보들 :" + pageInfo);
	 
	 
	 List<ClassAndInfoDTO> classInfoList = classListService.selectClassList(pageInfo);
	 
	 
 	 model.addAttribute("classGroup", classInfoList);
	 model.addAttribute("pageInfo", pageInfo);

	 
	 System.out.println("searchList " + classInfoList);

	 rttr.addFlashAttribute("message", "게시물 결과 조회 성공");

		
	 return "classInfo/classList";
	 
	 }
	 

}
