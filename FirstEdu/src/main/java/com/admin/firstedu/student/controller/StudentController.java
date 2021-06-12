package com.admin.firstedu.student.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.common.exception.StudentRegistException;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;
import com.admin.firstedu.student.model.service.StudentService;

@Controller
@RequestMapping("/student/*")
public class StudentController {

	private final StudentService studentService;
	
	@Autowired
	public StudentController(StudentService studentService) {
		this.studentService = studentService;
	}
	
	@InitBinder public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@GetMapping("/regist")
	public String regist() {
		return "student/registForm";
	}
	
	@PostMapping("/regist")
	public String registStudent(@ModelAttribute StudentDTO student,
								HttpServletRequest request,
								RedirectAttributes rttr)
									throws StudentRegistException {
//		String address = request.getParameter("address1") + "$" + request.getParameter("address2");
		student.setGradeCode("H1");
		student.setStudentName("김고딩");
		if(("1").equals(student.getGender())) {
			student.setGender("남");
		} else if(("2").equals(student.getGender())) {
			student.setGender("여");
		}
		
		System.out.println(student);
		if(!studentService.registStudent(student)) {
			throw new StudentRegistException("원생 등록에 실패하였습니다. 잠시 후 다시 시도해 주세요.");
		}
		
		rttr.addFlashAttribute("message", "신규 원생을 등록하였습니다.");
		
		return "redirect:/student/list";
	}
	
	@GetMapping("/list")
	public String StudentList(Model model) {
		
		List<StudentRegistListDTO> studentList = studentService.selectStudentRegistList(); 
		for(StudentRegistListDTO student : studentList) {
			System.out.println(student);
		}
		model.addAttribute("studentList", studentList);
		
		return "student/studentList";
	}
}
