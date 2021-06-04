package com.admin.firstedu.attendance.model.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.attendance.common.exception.AttendanceInsertException;
import com.admin.firstedu.attendance.common.exception.AttendanceUpdateException;
import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;
import com.admin.firstedu.attendance.model.service.AttendanceService;
import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;

@Controller
@RequestMapping("/attendance/*")
public class AttendanceController {
	
	private final AttendanceService attendanceService;
	
	@Autowired
	public AttendanceController(AttendanceService attendanceService) {
		this.attendanceService = attendanceService;
	
	}
	
	@GetMapping("/studentList")//파일 path
	public String selectStudnetAttendance(Model model) {
		
		List<AttendanceInfoDTO> studentList = attendanceService.selectStudentAttendance();
		
		model.addAttribute("studentList", studentList);
		
		for(AttendanceInfoDTO student : studentList) {
	
			System.out.println(student);
		
		}
		
		return "attendance/studentList";//뷰페이지 이름
	
	}
	
//	@GetMapping("/teacherList")
//	public String selectTeacherAttendance(Model model) {
//		
//		List<AttendanceInfoDTO> teacherList = attendanceService.selectTeacherAttendance();
//		
//		model.addAttribute("teacherList", teacherList);
//		
//		for(AttendanceInfoDTO teacher : teacherList) {
//			System.out.println(teacher);
//		}
//		
//		return "attendance/teacherList";
//	
//	}
	@GetMapping("/teacherList")
	public String insertTeacher() {
		return  "attendance/teacherList";
		
	}
	
	@PostMapping(value = "/teacherList" , produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String insertTeacher(@ModelAttribute AttendanceDTO attendanceDTO, RedirectAttributes rttr) throws AttendanceInsertException {
		
		
		java.sql.Date currnetTime = new java.sql.Date(System.currentTimeMillis());
		attendanceDTO.setAttendanceTime(currnetTime);
		attendanceDTO.setNo(4);
		
		
		if(!attendanceService.insertTeacher(attendanceDTO)) {
			
			throw new AttendanceInsertException("실패");
		}
		
		rttr.addFlashAttribute("message", "성공");
		
		System.out.println(currnetTime);
		
		
		return currnetTime.toGMTString();		
	}
//	currnetTime.toGMTString()
	
	@GetMapping("/doneTeacher")
	public String doneTeahcer() {
		return "attendance/doneTeacher";
		
	}

	@PostMapping(value = "/doneTeacher" , produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String doneTeacher(@ModelAttribute AttendanceDTO attendanceDTO, RedirectAttributes rttr) throws AttendanceInsertException {
		
		
		java.sql.Date currnetTime = new java.sql.Date(System.currentTimeMillis());
		attendanceDTO.setCheckOutTime(currnetTime);
		attendanceDTO.setNo(51);
		
		if(!attendanceService.insertTeacher(attendanceDTO)) {
			
			throw new AttendanceInsertException("실패");
		}
		
		rttr.addFlashAttribute("message", "성공");
		
		System.out.println(currnetTime);
		
		
		return currnetTime.toGMTString();		
	}
	
	
	@GetMapping("/insertStudent")
	public String InsertStudent() {
		return "attendance/insertStudent";
	}
	
	
	@PostMapping("/insertStudent")
	public String insertStudent(@ModelAttribute AttendanceDTO attendance, RedirectAttributes rttr) throws AttendanceInsertException {
		
				
		if(!attendanceService.insertStudent(attendance)) {
			
			throw new AttendanceInsertException("학생 출결 입력 실패");
		}
		
		rttr.addFlashAttribute("message", "성공");
		
		return "attendance/insertStudent";
		
	}
	
	
	@GetMapping("/updateStudent")
	public String updateStudentAttendance() {
		return "attendance/updateStudent";
	}
		
	
	@PostMapping("/updateStudent")
	public String updateStudentAttendance(@ModelAttribute AttendanceDTO attendance, RedirectAttributes rttr) throws AttendanceUpdateException {
		
		if(!attendanceService.updateStudentAttendance(attendance)) {
				
			throw new AttendanceUpdateException("학생 출결 수정 실패");
		} 
		
		return "attendance/updateStudent";
		
	}
	
	
	
	

	

}
