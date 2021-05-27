package com.admin.firstedu.grade.controller;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.admin.firstedu.common.exception.ExamException;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;
import com.admin.firstedu.grade.model.service.ExamService;

@Controller
public class ExamController {

	private final ExamService examService;

	@Autowired
	public ExamController(ExamService examService) {
		this.examService = examService;
	}
	
	/* 시험 목록 조회 */
	@GetMapping("/grade/exam")
	public void selectExamList(@ModelAttribute ExamSearchCriteria searchCriteria, Model model) {
		Calendar date = new GregorianCalendar(2021, 06, 01);
		java.util.Date beginDate = new java.util.Date(date.getTimeInMillis());
		
//		ExamSearchCriteriaDTO searchCriteria = new ExamSearchCriteriaDTO(2, "6월", new java.sql.Date(beginDate.getTime()), null, 0, 0);
//		System.out.println("searchCriteria : " + searchCriteria);
		List<ExamFullInfoDTO> examList = examService.selectExamList(searchCriteria);
		for(ExamFullInfoDTO exam : examList) {
			System.out.println(exam);
		}
		List<ExamCategoryDTO> examCategoryList = examService.selectExamCategoryList();
		for(ExamCategoryDTO examCategory : examCategoryList) {
			System.out.println(examCategory);
		}
		
//		model.addAttribute("examList", examService.selectExamList(searchCriteria));
		model.addAttribute("examList", examList);
	}

	/* 시험 일정 등록 */
	@PostMapping("/exam/regist")
	public String registExam(@ModelAttribute ExamDTO exam) throws ExamException {
		
//		ExamDTO exam = new ExamDTO(0, 9, "test", new java.sql.Date(new java.util.Date().getTime()), "더조은고등학교", 2, 1);
		if(!examService.registExam(exam)) {
			throw new ExamException("시험 일정 등록에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}
	
	/* 시험 일정 수정 */
	@PostMapping("/exam/modify")
	public String updateExam(@ModelAttribute ExamDTO exam) throws ExamException {

//		ExamDTO exam = new ExamDTO(1, 7, "test", new java.sql.Date(new java.util.Date().getTime()), "더신나는고등학교", 3, 2);
		if(!examService.modifyExam(exam)) {
			throw new ExamException("시험 일정 수정에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}

	/* 시험 일정 삭제 */
	@PostMapping("/exam/remove")
	public String removeExam(@RequestParam(required=false, defaultValue="0") int examNo) throws ExamException {
		
//		int examNo = 1;
		if(!examService.removeExam(examNo)) {
			throw new ExamException("시험 일정 삭제에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}
	
	/* 시험 종류 카테고리 등록 */
	@PostMapping("/exam/category/regist")
	public String registExamCategory(@ModelAttribute ExamCategoryDTO examCategory) throws ExamException {
		
//		examCategory.setName("test");
//		examCategory.setRefCategoryNo(1);
		if(!examService.registExamCategory(examCategory)) {
			throw new ExamException("시험 종류 카테고리 등록에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}
	
}
