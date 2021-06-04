package com.admin.firstedu.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;
import com.admin.firstedu.work.model.service.WorkService;

@Controller
@RequestMapping("/work/*")
public class WorkController {

	private final WorkService workService;
	
	@Autowired
	public WorkController(WorkService workService) {
		this.workService = workService;
	}
	
	@GetMapping("/list")
	public String workBoardList(Model model) {
		
		List<WorkBoardFullInfoDTO> boardList = workService.selectWorkBoardList();
		model.addAttribute("boardList", boardList);
		
		for(WorkBoardFullInfoDTO board : boardList) {
			System.out.println(board);
		}
		
		return "work/workBoardList";
	}
	
}
