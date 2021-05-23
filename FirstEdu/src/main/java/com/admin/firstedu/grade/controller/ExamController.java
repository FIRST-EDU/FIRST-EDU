package com.admin.firstedu.grade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.admin.firstedu.common.exception.ExamRegistException;
import com.admin.firstedu.grade.model.dto.ExamDTO;
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
	public void examSchedule() {}

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
		
		model.addAttribute("examList", examService.selectExamList(searchCriteria));
		
//		Calendar date = new GregorianCalendar(2021, 06, 01);
//		java.util.Date beginDate = new java.util.Date(date.getTimeInMillis());
//		
//		ExamSearchCriteriaDTO searchCriteria = new ExamSearchCriteriaDTO(2, "6월", new java.sql.Date(beginDate.getTime()), null, 0, 0);
//		System.out.println("searchCriteria : " + searchCriteria);
//		List<ExamFullInfoDTO> examList = examService.selectExamList(searchCriteria);
//		for(ExamFullInfoDTO exam : examList) {
//			System.out.println(exam);
//		}
		
		return "grade/exam";
	}
	
	
}
