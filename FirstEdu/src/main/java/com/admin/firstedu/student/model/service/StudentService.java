package com.admin.firstedu.student.model.service;

import java.util.List;

import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;

public interface StudentService {

	boolean registStudent(StudentDTO student);

	List<StudentRegistListDTO> selectStudentRegistList();

}
