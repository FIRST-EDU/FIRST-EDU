package com.admin.firstedu.attendance.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.attendance.common.exception.AttendanceInsertException;
import com.admin.firstedu.attendance.common.exception.AttendanceUpdateException;
import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;
import com.admin.firstedu.attendance.model.service.AttendanceService;

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
		
		List<AttendanceInfoDTO> studentList = attendanceService.selectStudnetAttendance();
		
		model.addAttribute("studentList", studentList);
		
		for(AttendanceInfoDTO student : studentList) {
	
			System.out.println(student);
		
		}
		
		return "attendance/studentList";//뷰페이지 이름
	
	}
	
	@GetMapping("/list2")
	public String selectTeacherAttendance(Model model) {
		
		List<AttendanceInfoDTO> teacherList = attendanceService.selectTeacherAttendance();
		
		model.addAttribute("teacherList", teacherList);
		
		for(AttendanceInfoDTO teacher : teacherList) {
			System.out.println(teacher);
		}
		
		return "attendance/list2";
	
	}
	
	
	@PostMapping("/insertStudent")
	public String insertStudent(@ModelAttribute AttendanceDTO attendance, RedirectAttributes rttr) throws AttendanceInsertException {
		
		
		if(!attendanceService.insertStudent(attendance)) {
			
			throw new AttendanceInsertException("학생 출결 입력 실패");
		}
		
		
		return "attendance/insertStudent";
		
	}
	
		
	
	
	@PostMapping("/updateStudent")
	public String updateStudentAttendance(@ModelAttribute AttendanceDTO attendance, RedirectAttributes rttr) throws AttendanceUpdateException {
		
		if(!attendanceService.updateStudentAttendance(attendance)) {
				
			throw new AttendanceUpdateException("학생 출결 수정 실패");
		} 
		
		return "attendance/updateStudent";
		
	}
	
	
	@PostMapping("/insertTeacher")
	public String insertTeacher(@ModelAttribute AttendanceDTO attendance) throws AttendanceInsertException {
		
		if(!attendanceService.insertTeacher(attendance)) {
			
			throw new AttendanceInsertException("선생님 출결 입력 실패");
		}
		
		return "attendance/result2";
		
	}
	

	

}
