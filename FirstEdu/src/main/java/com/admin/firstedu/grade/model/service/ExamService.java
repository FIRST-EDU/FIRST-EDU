package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteriaDTO;

public interface ExamService {

	boolean registExam(ExamDTO exam);
	
	List<ExamFullInfoDTO> selectExamList(ExamSearchCriteriaDTO searchCriteria);
	
	boolean modifyExam(ExamDTO exam);
	
	boolean removeExam(int examNo);
}
