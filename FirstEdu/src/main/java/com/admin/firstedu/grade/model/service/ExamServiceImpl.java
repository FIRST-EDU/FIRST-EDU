package com.admin.firstedu.grade.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.grade.model.dao.ExamMapper;
import com.admin.firstedu.grade.model.dto.ClassExamInfoDTO;
import com.admin.firstedu.grade.model.dto.ColorDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamListInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;
import com.admin.firstedu.grade.model.dto.GradeDTO;
import com.admin.firstedu.grade.model.dto.HagwonExamScoreBasicInfoDTO;
import com.admin.firstedu.grade.model.dto.HagwonExamScoreBasicInfoListDTO;
import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;

@Service("examService")
public class ExamServiceImpl implements ExamService {

	private ExamMapper mapper;
	
	@Autowired
	public ExamServiceImpl(ExamMapper mapper) {
		this.mapper = mapper;
	}
	
	/* 첫 화면 시험 일정 조회용 */
	@Override
	public List<ExamListInfoDTO> selectExamScheduleList() {
		return mapper.selectExamScheduleList();
	}

	/* 시험 종류 조회용 */
	@Override
	public List<ExamCategoryFullInfoDTO> selectExamCategoryList() {
		return mapper.selectExamCategoryList();
	}

	/* 검색을 위한 강의명 조회용 */
	@Override
	public List<ClassExamInfoDTO> selectClassList() {
		return mapper.selectClassList();
	}

	/* 시험 종류 카테고리 색상 종류 조회용 */
	@Override
	public List<ColorDTO> selectColorList() {
		return mapper.selectColorList();
	}
	
	/* 시험 일정 검색용 */
	@Override
	public List<ExamListInfoDTO> searchExamScheduleList(ExamSearchCriteria searchCriteria) {
		return mapper.searchExamScheduleList(searchCriteria);
	}
	
	/* 시험 목록 개수 조회용 */
	@Override
	public int selectTotalCount(ExamSearchCriteria searchCriteria) {
		return mapper.selectTotalCount(searchCriteria);
	}
	
	/* 시험 목록 테이블 검색용 */
	@Override
	public List<ExamListInfoDTO> searchExamList(ExamSearchCriteria searchCriteria) {
		return mapper.searchExamList(searchCriteria);
	}

//	@Override
//	public boolean registExam(ExamDTO exam) {
//		return mapper.insertExam(exam) > 0 ? true : false;
//	}
	
	/* 시험 등록 및 관련 성적 등록용 */
	@Override
	public boolean registExamAndScoreBasicInfo(ExamDTO exam) {
		
		/* 시험 등록 */
		int result1 = mapper.insertExam(exam);
		
		/* 등록한 시험 번호 조회 */
		int examNo = mapper.selectRegisteredExamNo();
		
		int result2 = 0;
		if(exam.getCategoryNo() == 1) {
			mapper.selectSchoolExamStudentList(examNo);
			result2 = 1;
			
		} else if(exam.getCategoryNo() == 2) {
			mapper.selectMockExamStudentList(examNo);
			result2 = 1;
		
		/* 학원 시험 기본 정보 등록 */
		} else {
			List<HagwonExamScoreBasicInfoDTO> hagwonExamScoreBasicInfoList = mapper.selectHagwonExamScoreBasicInfoList(examNo);
			System.out.println(hagwonExamScoreBasicInfoList);
			result2 = mapper.insertHagwonExamScoreBasicInfo(new HagwonExamScoreBasicInfoListDTO(hagwonExamScoreBasicInfoList));
		}
		
		return result1 > 0 && result2 > 0 ? true : false;
	}

	/* 시험 정보 수정용 */
	@Override
	public boolean modifyExam(ExamDTO exam) {
		return mapper.updateExam(exam) > 0 ? true : false;
	}

	/* 시험 삭제용 */
	@Override
	public boolean removeExam(int examNo) {
		return mapper.deleteExam(examNo) > 0 ? true : false;
	}

	/* 시험 종류 등록용 */
	@Override
	public boolean registExamCategory(ExamCategoryDTO examCategory) {
		return mapper.insertExamCategory(examCategory) > 0 ? true : false;
	}

	/* 시험 종류 수정용 */
	@Override
	public boolean modifyExamCategory(ExamCategoryDTO examCategory) {
		return mapper.updateExamCategory(examCategory) > 0 ? true : false;
	}

	/* 시험 종류 삭제용 */
	@Override
	public boolean removeExamCategory(int examCategoryNo) {
		return mapper.deleteExamCategory(examCategoryNo) > 0 ? true : false;
	}

	/* 시험 상세 페이지로 가기 위한 시험 정보 조회용 */
	@Override
	public ExamListInfoDTO selectExam(int examNo) {
		return mapper.selectExam(examNo);
	}

	/* 시험 상세 페이지 내에서 성적 정보 조회용 */
	@Override
	public List<ScoreDTO> selectScoreList(int examNo) {
		return mapper.selectScoreList(examNo);
	}

	/* 시험 등록 시 학교 목록 조회용 */
	@Override
	public List<SchoolDTO> selectSchoolList() {
		return mapper.selectSchoolList();
	}
	
	/* 시험 등록 시 학년 목록 조회용 */
	@Override
	public List<GradeDTO> selectGradeList() {
		return mapper.selectGradeList();
	}

}
