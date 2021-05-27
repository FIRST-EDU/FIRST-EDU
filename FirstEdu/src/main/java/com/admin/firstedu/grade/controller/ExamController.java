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

import com.admin.firstedu.common.exception.ExamRegistException;
import com.admin.firstedu.common.exception.ExamRemoveException;
import com.admin.firstedu.common.exception.ExamUpdateException;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteriaDTO;
import com.admin.firstedu.grade.model.service.ExamService;

@Controller
public class ExamController {

	private final ExamService examService;

	@Autowired
	public ExamController(ExamService examService) {
		this.examService = examService;
	}
	
	@GetMapping("/grade/exam")
	public void examSchedule(@ModelAttribute ExamSearchCriteriaDTO searchCriteria, Model model) {
		Calendar date = new GregorianCalendar(2021, 06, 01);
		java.util.Date beginDate = new java.util.Date(date.getTimeInMillis());
		
//		ExamSearchCriteriaDTO searchCriteria = new ExamSearchCriteriaDTO(2, "6월", new java.sql.Date(beginDate.getTime()), null, 0, 0);
//		System.out.println("searchCriteria : " + searchCriteria);
		List<ExamFullInfoDTO> examList = examService.selectExamList(searchCriteria);
		for(ExamFullInfoDTO exam : examList) {
			System.out.println(exam);
		}
		
//		model.addAttribute("examList", examService.selectExamList(searchCriteria));
		model.addAttribute("examList", examList);

		
	}

	@PostMapping("/exam/regist")
	public String registExam(@ModelAttribute ExamDTO exam) throws ExamRegistException {
		
//		ExamDTO exam = new ExamDTO(0, 9, "test", new java.sql.Date(new java.util.Date().getTime()), "더조은고등학교", 2, 1);
		if(!examService.registExam(exam)) {
			throw new ExamRegistException("시험 일정 등록에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}
	
	@GetMapping("/exam/list")
	public String selectExamList(@ModelAttribute ExamSearchCriteriaDTO searchCriteria, Model model) {
		
		Calendar date = new GregorianCalendar(2021, 06, 01);
		java.util.Date beginDate = new java.util.Date(date.getTimeInMillis());
		
//		ExamSearchCriteriaDTO searchCriteria = new ExamSearchCriteriaDTO(2, "6월", new java.sql.Date(beginDate.getTime()), null, 0, 0);
//		System.out.println("searchCriteria : " + searchCriteria);
		List<ExamFullInfoDTO> examList = examService.selectExamList(searchCriteria);
		for(ExamFullInfoDTO exam : examList) {
			System.out.println(exam);
		}
		
//		model.addAttribute("examList", examService.selectExamList(searchCriteria));
		model.addAttribute("examList", examList);

		return "grade/exam";
	}
	
	@PostMapping("/exam/modify")
	public String updateExam(@ModelAttribute ExamDTO exam) throws ExamUpdateException {

//		ExamDTO exam = new ExamDTO(1, 7, "test", new java.sql.Date(new java.util.Date().getTime()), "더신나는고등학교", 3, 2);
		if(!examService.modifyExam(exam)) {
			throw new ExamUpdateException("시험 일정 수정에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}

	@PostMapping("/exam/remove")
	public String removeExam(@RequestParam(required=false, defaultValue="0") int examNo) throws ExamRemoveException {
		
//		int examNo = 1;
		if(!examService.removeExam(examNo)) {
			throw new ExamRemoveException("시험 일정 삭제에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}
	
}
