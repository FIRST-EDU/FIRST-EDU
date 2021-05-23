package com.admin.firstedu.grade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.admin.firstedu.common.exception.ExamRegistException;
import com.admin.firstedu.grade.model.dto.ExamDTO;
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
	public String registExam(/*@ModelAttribute ExamDTO exam*/) throws ExamRegistException {
		ExamDTO exam = new ExamDTO(0, 9, "test", new java.sql.Date(new java.util.Date().getTime()), "더조은고등학교", 2, 1);
		if(!examService.registExam(exam)) {
			throw new ExamRegistException("시험 일정 등록에 실패하셨습니다.");
		}
		
		return "grade/exam";
	}
}
