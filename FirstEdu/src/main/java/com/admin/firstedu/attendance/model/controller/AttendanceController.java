package com.admin.firstedu.attendance.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.firstedu.attendance.common.exception.AttendanceInsertException;
import com.admin.firstedu.attendance.common.exception.AttendanceUpdateException;
import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.service.AttendanceService;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {
	
	private final AttendanceService attendanceService;
	
	@Autowired
	public AttendanceController(AttendanceService attendanceService) {
		this.attendanceService = attendanceService;
	
	}
	
	
	@GetMapping("/list1")//파일 path
	public String selectStudnetAttendance(@ModelAttribute AttendanceDTO attendance, Model model) {
	
		model.addAttribute("attendanceList", attendanceService.selectStudnetAttendance(attendance));
		
		return "attendance/list1";//뷰페이지 이름
		
	}
	
	@GetMapping("/list2")
	public String selectTeacherAttendance(@ModelAttribute AttendanceDTO attendance, Model model) {
		
		model.addAttribute("attendanceList", attendanceService.selectTeacherAttendance(attendance));
		
		return "attendance/list2";
		
	}
	
	
	@PostMapping("/insertStudent")
	public String insertStudent(@ModelAttribute AttendanceDTO attendance) throws AttendanceInsertException {
		
		
		if(!attendanceService.insertStudent(attendance)) {
			
			throw new AttendanceInsertException("학생 출결 입력 실패");
		}
		
		return "attendance/result1";
		
	}
	
		
	
	
	@PostMapping("/updateStudent")
	public String updateStudentAttendance(@ModelAttribute AttendanceDTO attendance) throws AttendanceUpdateException {
		
		if(!attendanceService.updateStudentAttendance(attendance)) {
				
			throw new AttendanceUpdateException("학생 출결 수정 실패");
		} 
		
		return "attendance/result1";
		
	}
	
	
	@PostMapping("/insertTeacher")
	public String insertTeacher(@ModelAttribute AttendanceDTO attendance) throws AttendanceInsertException {
		
		if(!attendanceService.insertTeacher(attendance)) {
			
			throw new AttendanceInsertException("선생님 출결 입력 실패");
		}
		
		return "attendance/result2";
		
	}
	

	

}
