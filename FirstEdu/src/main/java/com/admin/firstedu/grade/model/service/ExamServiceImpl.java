package com.admin.firstedu.grade.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.grade.model.dao.GradeMapper;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteriaDTO;

@Service("examService")
public class ExamServiceImpl implements ExamService {

	private GradeMapper mapper;
	
	@Autowired
	public ExamServiceImpl(GradeMapper mapper) {
		this.mapper = mapper;
	}
	
	
	@Override
	public boolean registExam(ExamDTO exam) {

		return mapper.insertExam(exam) > 0 ? true : false;
	}

	@Override
	public List<ExamDTO> selectExamList(ExamSearchCriteriaDTO searchCriteria) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modifyExam(ExamDTO exam) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeExam(ExamDTO exam) {
		// TODO Auto-generated method stub
		return false;
	}

}
