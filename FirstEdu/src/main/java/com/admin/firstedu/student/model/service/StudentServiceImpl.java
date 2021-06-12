package com.admin.firstedu.student.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.student.model.dao.StudentMapper;
import com.admin.firstedu.student.model.dto.ClassBasicInfoDTO;
import com.admin.firstedu.student.model.dto.GradeDTO;
import com.admin.firstedu.student.model.dto.PageInfoDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;
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
	public int selectTotalCount() {
		return mapper.selectTotalCount();
	}

	@Override
	public List<StudentRegistListDTO> selectStudentRegistList(PageInfoDTO pageInfo) {
		
		/* 한 페이지에 보여 줄 학생 목록 조회 */
		List<StudentRegistListDTO> studentList = mapper.selectStudentRegistList(pageInfo);
		
		/* 각 학생의 수강 내역 조회 */
		for(StudentRegistListDTO student : studentList) {
			student.setClassList(mapper.selectStudentClassList(student.getNo()));
		}
		
		return studentList;
	}

	@Override
	public List<SchoolDTO> selectSchoolList() {
		return mapper.selectSchoolList();
	}

	@Override
	public List<GradeDTO> selectGradeList() {
		return mapper.selectGradeList();
	}

	@Override
	public List<ClassBasicInfoDTO> selectClassList() {
		return mapper.selectClassList();
	}
	
}
