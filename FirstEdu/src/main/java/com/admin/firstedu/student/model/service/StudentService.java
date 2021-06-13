package com.admin.firstedu.student.model.service;

import java.util.List;

import com.admin.firstedu.student.model.dto.ClassBasicInfoDTO;
import com.admin.firstedu.student.model.dto.ClassInfoDTO;
import com.admin.firstedu.student.model.dto.GradeDTO;
import com.admin.firstedu.student.model.dto.PageInfoDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentQuitListDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;
import com.admin.firstedu.student.model.dto.StudentSearchCriteria;

public interface StudentService {

	/* 원생 등록 */
	boolean registStudent(StudentDTO student);

	/* 원생 수강정보 등록 */
	boolean registClassInfo(List<ClassInfoDTO> classInfoList);

	/* 총 재원생 수 */
	int selectTotalCount();

	/* 재원생 리스트 조회 */
	List<StudentRegistListDTO> selectStudentRegistList(PageInfoDTO pageInfo);

	/* 학교 목록 조회 */
	List<SchoolDTO> selectSchoolList();

	/* 학년 목록 조회 */
	List<GradeDTO> selectGradeList();

	/* 강의 목록 조회 */
	List<ClassBasicInfoDTO> selectClassList();

	/* 재원생 검색 결과 개수 조회 */
	int searchTotalCount(StudentSearchCriteria searchCriteria);

	/* 재원생 검색 */
	List<StudentRegistListDTO> searchStudentRegistList(StudentSearchCriteria searchCriteria);

	/* 퇴원생 수 조회 */
	int selectQuitTotalCount();

	/* 퇴원생 리스트 조회 */
	List<StudentQuitListDTO> selectStudentQuitList(PageInfoDTO pageInfo);

	/* 퇴원생 학교 목록 */
	List<SchoolDTO> selectQuitStudentSchoolList();

	/* 퇴원생 검색 결과 개수 조회 */
	int searchQuitTotalCount(StudentSearchCriteria searchCriteria);

	/* 퇴원생 검색 */
	List<StudentQuitListDTO> searchStudentQuitList(StudentSearchCriteria searchCriteria);

}
