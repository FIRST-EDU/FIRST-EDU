package com.admin.firstedu.student.model.service;

import java.util.List;

import com.admin.firstedu.student.model.dto.ClassBasicInfoDTO;
import com.admin.firstedu.student.model.dto.GradeDTO;
import com.admin.firstedu.student.model.dto.PageInfoDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;
import com.admin.firstedu.student.model.dto.StudentSearchCriteria;

public interface StudentService {

	boolean registStudent(StudentDTO student);

	int selectTotalCount();

	List<StudentRegistListDTO> selectStudentRegistList(PageInfoDTO pageInfo);

	List<SchoolDTO> selectSchoolList();

	List<GradeDTO> selectGradeList();

	List<ClassBasicInfoDTO> selectClassList();

	int searchTotalCount(StudentSearchCriteria searchCriteria);

	List<StudentRegistListDTO> searchStudentRegistList(StudentSearchCriteria searchCriteria);

}
