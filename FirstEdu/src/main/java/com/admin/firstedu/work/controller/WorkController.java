package com.admin.firstedu.work.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.admin.firstedu.common.exception.WorkException;
import com.admin.firstedu.work.model.dto.TeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardAndTeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardDTO;
import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;
import com.admin.firstedu.work.model.service.WorkService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/work/*")
@SessionAttributes("loginMember")
public class WorkController {

	private final WorkService workService;
	
	@Autowired
	public WorkController(WorkService workService) {
		this.workService = workService;
	}
	
	@GetMapping("/board/list")
	public String workBoardList(@ModelAttribute("loginMember") TeacherDTO teacher, Model model) {
		
		List<WorkBoardFullInfoDTO> boardList = workService.selectWorkBoardList(teacher);
		model.addAttribute("boardList", boardList);
		
		for(WorkBoardFullInfoDTO board : boardList) {
			System.out.println(board);
		}
		
		return "work/workBoardList";
	}
	
	@PostMapping(value="/board/regist", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String registWorkBoard(@ModelAttribute WorkBoardDTO workBoard,
								  @ModelAttribute("loginMember") TeacherDTO teacher)
										  throws IOException, WorkException {
		workBoard.setCreator(teacher.getNo());
	
		Gson gson = new Gson();
		
		WorkBoardAndTeacherDTO workBoardAndTeacher = workService.registWorkBoard(workBoard);
		
		if(workBoardAndTeacher == null) {
			throw new WorkException("업무 보드 생성에 실패하였습니다."); 
		}
		
		return gson.toJson(workBoardAndTeacher);
	}
	
}
