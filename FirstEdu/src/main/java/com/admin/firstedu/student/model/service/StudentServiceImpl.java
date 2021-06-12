package com.admin.firstedu.student.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.student.model.dao.StudentMapper;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;

@Service
public class StudentServiceImpl implements StudentService {

	private final StudentMapper mapper;
	
	@Autowired
	public StudentServiceImpl(StudentMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public boolean registStudent(StudentDTO student) {
		return mapper.insertStudent(student);
	}

	@Override
	public List<StudentRegistListDTO> selectStudentRegistList() {
		return mapper.selectStudentRegistList();
	}
	
}
