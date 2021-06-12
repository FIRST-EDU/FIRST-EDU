package com.admin.firstedu.student.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.student.model.dao.StudentMapper;
import com.admin.firstedu.student.model.dto.StudentDTO;

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
	
}
