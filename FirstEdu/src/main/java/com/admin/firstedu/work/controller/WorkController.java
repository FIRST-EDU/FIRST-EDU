package com.admin.firstedu.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.admin.firstedu.work.model.dto.TeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;
import com.admin.firstedu.work.model.service.WorkService;

@Controller
@RequestMapping("/work/*")
@SessionAttributes("loginMember")
public class WorkController {

	private final WorkService workService;
	
	@Autowired
	public WorkController(WorkService workService) {
		this.workService = workService;
	}
	
	@GetMapping("/list")
	public String workBoardList(@ModelAttribute/* ("loginMember") */ TeacherDTO teacher, Model model) {
		
		teacher.setNo(6);
		
		List<WorkBoardFullInfoDTO> boardList = workService.selectWorkBoardList(teacher);
		model.addAttribute("boardList", boardList);
		
		for(WorkBoardFullInfoDTO board : boardList) {
			System.out.println(board);
		}
		
		return "work/workBoardList";
	}
	
}
