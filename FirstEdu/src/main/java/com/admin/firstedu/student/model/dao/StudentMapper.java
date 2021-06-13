package com.admin.firstedu.student.model.dao;

import java.util.List;

import com.admin.firstedu.student.model.dto.ClassBasicInfoDTO;
import com.admin.firstedu.student.model.dto.ClassInfoDTO;
import com.admin.firstedu.student.model.dto.GradeDTO;
import com.admin.firstedu.student.model.dto.PageInfoDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentFullInfoDTO;
import com.admin.firstedu.student.model.dto.StudentQuitListDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;
import com.admin.firstedu.student.model.dto.StudentSearchCriteria;

public interface StudentMapper {

	int insertStudent(StudentDTO student);

	int insertClassInfo(ClassInfoDTO classInfo);

	int selectTotalCount();
	List<StudentRegistListDTO> selectStudentRegistList(PageInfoDTO pageInfo);
	List<ClassBasicInfoDTO> selectStudentClassList(int studentNo);

	List<SchoolDTO> selectSchoolList();

	List<GradeDTO> selectGradeList();

	List<ClassBasicInfoDTO> selectClassList();

	int searchTotalCount(StudentSearchCriteria searchCriteria);

	List<StudentRegistListDTO> searchStudentRegistList(StudentSearchCriteria searchCriteria);

	int selectQuitTotalCount();

	List<StudentQuitListDTO> selectStudentQuitList(PageInfoDTO pageInfo);

	List<SchoolDTO> selectQuitStudentSchoolList();

	int searchQuitTotalCount(StudentSearchCriteria searchCriteria);

	List<StudentQuitListDTO> searchStudentQuitList(StudentSearchCriteria searchCriteria);

	StudentFullInfoDTO selectStudentFullInfo(int studentNo);


}
