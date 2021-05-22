package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteriaDTO;

public interface ExamService {

	boolean registExam(ExamDTO exam);
	
	List<ExamDTO> selectExamList(ExamSearchCriteriaDTO searchCriteria);
	
	boolean modifyExam(ExamDTO exam);
	
	boolean removeExam(ExamDTO exam);
}
