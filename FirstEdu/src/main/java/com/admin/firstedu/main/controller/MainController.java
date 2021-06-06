package com.admin.firstedu.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.admin.firstedu.work.model.dto.TeacherDTO;

@Controller
@RequestMapping("/*")
@SessionAttributes("loginMember")
public class MainController {
	
	@GetMapping(value={"/", "main"})
	public String main(Model model) {
		TeacherDTO teacher = new TeacherDTO();
		teacher.setNo(2);
		model.addAttribute("loginMember", teacher);
		return "main/main";
	}
}
