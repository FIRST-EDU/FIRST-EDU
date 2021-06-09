package com.admin.firstedu.grade.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.grade.model.dao.ExamMapper;
import com.admin.firstedu.grade.model.dto.ClassExamInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamListInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;

@Service("examService")
public class ExamServiceImpl implements ExamService {

	private ExamMapper mapper;
	
	@Autowired
	public ExamServiceImpl(ExamMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public List<ExamListInfoDTO> selectExamScheduleList() {
		return mapper.selectExamScheduleList();
	}

	@Override
	public List<ExamCategoryFullInfoDTO> selectExamCategoryList() {
		return mapper.selectExamCategoryList();
	}

	@Override
	public List<ClassExamInfoDTO> selectClassList() {
		return mapper.selectClassList();
	}
	
	@Override
	public List<ExamListInfoDTO> searchExamScheduleList(ExamSearchCriteria searchCriteria) {
		return mapper.searchExamScheduleList(searchCriteria);
	}
	
	@Override
	public int selectTotalCount(ExamSearchCriteria searchCriteria) {
		return mapper.selectTotalCount(searchCriteria);
	}
	
	@Override
	public List<ExamListInfoDTO> searchExamList(ExamSearchCriteria searchCriteria) {
		return mapper.searchExamList(searchCriteria);
	}

	@Override
	public boolean registExam(ExamDTO exam) {
		return mapper.insertExam(exam) > 0 ? true : false;
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
