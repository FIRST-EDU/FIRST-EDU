package com.admin.firstedu.student.model.dao;

import java.util.List;

import com.admin.firstedu.student.model.dto.PageInfoDTO;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentListClassNameDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;

public interface StudentMapper {

	boolean insertStudent(StudentDTO student);

	int selectTotalCount();
	List<StudentRegistListDTO> selectStudentRegistList(PageInfoDTO pageInfo);
	List<StudentListClassNameDTO> selectStudentClassList(int studentNo);

	
}
