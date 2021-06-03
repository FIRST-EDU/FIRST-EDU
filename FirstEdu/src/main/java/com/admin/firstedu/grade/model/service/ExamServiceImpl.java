package com.admin.firstedu.grade.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.grade.model.dao.ExamMapper;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;
import com.admin.firstedu.grade.model.dto.HagwonExamScoreBasicInfoDTO;
import com.admin.firstedu.grade.model.dto.HagwonExamScoreBasicInfoListDTO;

@Service("examService")
public class ExamServiceImpl implements ExamService {

	private ExamMapper mapper;
	
	@Autowired
	public ExamServiceImpl(ExamMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public List<ExamFullInfoDTO> selectExamList(ExamSearchCriteria searchCriteria) {
		return mapper.selectExamList(searchCriteria);
	}

	@Override
	public List<ExamCategoryFullInfoDTO> selectExamCategoryList() {
		return mapper.selectExamCategoryList();
	}

	@Override
	public boolean registExamAndScoreBasicInfo(ExamDTO exam) {
		
		/* 시험 등록 */
		int result1 = mapper.insertExam(exam);
		
		/* 등록한 시험 번호 조회 */
		int examNo = mapper.selectRegisteredExamNo();
		
		int result2 = 0;
		if(exam.getCategoryNo() == 1) {
			mapper.selectSchoolExamStudentList(examNo);
			
		} else if(exam.getCategoryNo() == 2) {
			mapper.selectMockExamStudentList(examNo);
		
		/* 학원 시험 기본 정보 등록 */
		} else {
			List<HagwonExamScoreBasicInfoDTO> hagwonExamScoreBasicInfoList = mapper.selectHagwonExamScoreBasicInfoList(examNo);
			System.out.println(hagwonExamScoreBasicInfoList);
			result2 = mapper.insertHagwonExamScoreBasicInfo(new HagwonExamScoreBasicInfoListDTO(hagwonExamScoreBasicInfoList));
		}
		
		return result1 > 0 && result2 > 0 ? true : false;
	}

	@Override
	public boolean modifyExam(ExamDTO exam) {
		return mapper.updateExam(exam) > 0 ? true : false;
	}

	@Override
	public boolean removeExam(int examNo) {
		return mapper.deleteExam(examNo) > 0 ? true : false;
	}

	@Override
	public boolean registExamCategory(ExamCategoryDTO examCategory) {
		return mapper.insertExamCategory(examCategory) > 0 ? true : false;
	}

	@Override
	public boolean modifyExamCategory(ExamCategoryDTO examCategory) {
		return mapper.updateExamCategory(examCategory) > 0 ? true : false;
	}

	@Override
	public boolean removeExamCategory(int examCategoryNo) {
		return mapper.deleteExamCategory(examCategoryNo) > 0 ? true : false;
	}

}
