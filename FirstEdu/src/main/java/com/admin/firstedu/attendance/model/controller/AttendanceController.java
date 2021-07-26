package com.admin.firstedu.attendance.model.controller;

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
import com.admin.firstedu.attendance.model.dto.StudentSetDTO;
import com.admin.firstedu.attendance.model.service.AttendanceService;

@Controller
@RequestMapping("/attendance/*")
public class AttendanceController {
	
	private final AttendanceService attendanceService;
	
	@Autowired
	public AttendanceController(AttendanceService attendanceService) {
		this.attendanceService = attendanceService;
	
	}
	
	@GetMapping("/studentList1")//파일 path
	public String selectStudnetAttendance(Model model) {
		
		List<AttendanceInfoDTO> studentList = attendanceService.selectStudentAttendance();
		
		model.addAttribute("studentList", studentList);
		
		for(AttendanceInfoDTO student : studentList) {
	
			System.out.println(student);
		
		}
		
		return "attendance/studentList1";//뷰페이지 이름
	
	}
	
	@GetMapping("/insertTeacher")
	public String insertTeacher() {
		return  "attendance/insertTeacher";
		
	}
	@PostMapping("/insertTeacher")
	public String insertTeacher(@ModelAttribute AttendanceDTO attendanceDTO, RedirectAttributes rttr) throws AttendanceInsertException {
		
		
		java.sql.Date currnetTime = new java.sql.Date(System.currentTimeMillis());
		attendanceDTO.setAttendanceTime(currnetTime);
		attendanceDTO.setNo(70);
		attendanceDTO.setTeacherNo(2);
		attendanceDTO.setCategoryNo(5);
		
		attendanceService.insertTeacher(attendanceDTO);
		
		if(!attendanceService.insertTeacher(attendanceDTO)) {
			
			throw new AttendanceInsertException("실패");
		}
		
		rttr.addFlashAttribute("message", "성공");
		
		System.out.println(currnetTime);
		
		return "attendance/insertTeacher";		
	}
	

	@GetMapping("/selectTeacher")
	public String selectTeacher(Model model) {
		
		List<AttendanceInfoDTO>teacherList = attendanceService.selectTeacher();
		model.addAttribute("teacherList", teacherList);
		
		for(AttendanceInfoDTO teacher : teacherList) {
			
			System.out.println(teacher);
		}
		
		return "attendance/selectTeacher";		
	}
	
	
	
	
	@GetMapping("/insertStudent")
	public String InsertStudent() {
		return "attendance/insertStudent";
	}

	   @PostMapping("/insertStudent")
	   public String insertStudent(@ModelAttribute AttendanceDTO attendance,String[] categoryNo1 ,RedirectAttributes rttr) throws AttendanceInsertException {
   
		  int delete = 0;

		  attendance.setNo(attendance.getNo());
		  attendance.setStudentNo(attendance.getStudentNo());

		  delete = attendanceService.deleteStudent(attendance);
		  
		  
		  int result = 0;
	      for(String arr : categoryNo1) {
	         AttendanceDTO newAtt = new AttendanceDTO();
	         newAtt.setNo(attendance.getNo());
	         newAtt.setStudentNo(attendance.getStudentNo());
	         newAtt.setMemo(attendance.getMemo());
	         newAtt.setClassNo(attendance.getClassNo());
	         newAtt.setAttendanceTime(attendance.getAttendanceTime());
	         newAtt.setCategoryNo(Integer.valueOf(arr));
	            System.out.println(arr);
	               
	         result += attendanceService.insertStudent(newAtt);
	      }
	      if(!(result == categoryNo1.length) && (delete == 0)) {
	         
	         throw new AttendanceInsertException("학생 출결 입력 실패");
	      }
	      
	      rttr.addFlashAttribute("message", "성공");
	      
	      return "attendance/insertStudent";

	   }
	   
	   
	@GetMapping("/selectStudent")
	public String selectStudnet(Model model, String className) {
		List<StudentSetDTO>studentList = attendanceService.selectStudent(className);
		List<AttendanceInfoDTO>cateogryList = attendanceService.selectCategory();
		
		model.addAttribute("cateogryList", cateogryList);
		model.addAttribute("studentList", studentList);
		
		
		for(AttendanceInfoDTO cateogry : cateogryList) {
			
			System.out.println(cateogry);
		}
			
		for(StudentSetDTO student : studentList) {
			
			System.out.println(student);
		}		
		return "attendance/selectStudent";
		
	}
	

		
	

	
	
	
//	@PostMapping(value = "/teacherList" , produces = "application/json; charset=UTF-8")
//	@ResponseBody
//	public String insertTeacher(@ModelAttribute AttendanceDTO attendanceDTO, RedirectAttributes rttr) throws AttendanceInsertException {
//		
//		
//		java.sql.Date currnetTime = new java.sql.Date(System.currentTimeMillis());
//		attendanceDTO.setAttendanceTime(currnetTime);
//		attendanceDTO.setNo(4);
//		attendanceDTO.setTeacherNo(1);
//		
//		
//		if(!attendanceService.insertTeacher(attendanceDTO)) {
//			
//			throw new AttendanceInsertException("실패");
//		}
//		
//		rttr.addFlashAttribute("message", "성공");
//		
//		System.out.println(currnetTime);
//		
//		
//		return currnetTime.toGMTString();		
//	}
//	

	

}

