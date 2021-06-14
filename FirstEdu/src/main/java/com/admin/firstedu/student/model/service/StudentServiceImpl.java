package com.admin.firstedu.student.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.common.paging.PageInfoDTO;
import com.admin.firstedu.student.model.dao.StudentMapper;
import com.admin.firstedu.student.model.dto.ClassBasicInfoDTO;
import com.admin.firstedu.student.model.dto.ClassInfoDTO;
import com.admin.firstedu.student.model.dto.ClassListDTO;
import com.admin.firstedu.student.model.dto.GradeDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;
import com.admin.firstedu.student.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.StudentFullInfoDTO;
import com.admin.firstedu.student.model.dto.StudentQuitListDTO;
import com.admin.firstedu.student.model.dto.StudentRegistListDTO;
import com.admin.firstedu.student.model.dto.StudentSearchCriteria;

@Service
public class StudentServiceImpl implements StudentService {

	private final StudentMapper mapper;
	
	@Autowired
	public StudentServiceImpl(StudentMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public boolean registStudent(StudentDTO student, ClassListDTO classList) {
		
		/* 원생 등록 */
		int result1 = mapper.insertStudent(student);
		
		/* 수강정보 등록 */
		int result2 = 0;
		for(int i = 0 ; i < classList.getClassCode().size() ; i++) {
			ClassInfoDTO classInfo = new ClassInfoDTO();
			classInfo.setStudentNo(student.getNo());
			classInfo.setClassCode(classList.getClassCode().get(i));
			classInfo.setBeginDate(student.getRegistrationDate());
			result2 += mapper.insertClassInfo(classInfo);
		}
		
		return result1 > 0 && result2 == classList.getClassCode().size() ? true : false;
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

	@Override
	public int searchTotalCount(StudentSearchCriteria searchCriteria) {
		return mapper.searchTotalCount(searchCriteria);
	}

	@Override
	public List<StudentRegistListDTO> searchStudentRegistList(StudentSearchCriteria searchCriteria) {
		
		/* 한 페이지에 보여 줄 학생 목록 조회 */
		List<StudentRegistListDTO> studentList = mapper.searchStudentRegistList(searchCriteria);
		
		/* 각 학생의 수강 내역 조회 */
		for(StudentRegistListDTO student : studentList) {
			student.setClassList(mapper.selectStudentClassList(student.getNo()));
		}
		
		return studentList;
	}

	@Override
	public int selectQuitTotalCount() {
		return mapper.selectQuitTotalCount();
	}

	@Override
	public List<StudentQuitListDTO> selectStudentQuitList(PageInfoDTO pageInfo) {
		return mapper.selectStudentQuitList(pageInfo);
	}

	@Override
	public List<SchoolDTO> selectQuitStudentSchoolList() {
		return mapper.selectQuitStudentSchoolList();
	}

	@Override
	public int searchQuitTotalCount(StudentSearchCriteria searchCriteria) {
		return mapper.searchQuitTotalCount(searchCriteria);
	}

	@Override
	public List<StudentQuitListDTO> searchStudentQuitList(StudentSearchCriteria searchCriteria) {
		return mapper.searchStudentQuitList(searchCriteria);
	}

	@Override
	public StudentFullInfoDTO selectStudentFullInfo(int studentNo) {
		return mapper.selectStudentFullInfo(studentNo);
	}
	
	@Override
	public boolean modifyStudent(StudentDTO student, ClassListDTO classList) {
		int result1 = mapper.updateStudent(student);
		int result2 = mapper.deleteClassInfo(student.getNo());
		int result3 = 0;
		for(int i = 0 ; i < classList.getClassCode().size() ; i++) {
			ClassInfoDTO classInfo = new ClassInfoDTO();
			classInfo.setStudentNo(student.getNo());
			classInfo.setClassCode(classList.getClassCode().get(i));
			result3 += mapper.insertClassInfo(classInfo);
		}
		return result1 > 0 && result2 > 0  && result3 == classList.getClassCode().size() ? true : false;
	}

	@Override
	public boolean deleteStudent(int studentNo) {
		int result1 = mapper.deleteStudent(studentNo);
		
		return result1 > 0 ? true : false;
	}

	@Override
	public boolean updateStudentStatus(int studentNo) {
		return mapper.updateStudentStatus(studentNo) > 0 ? true : false;
	}

}
