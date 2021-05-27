package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;

public interface ExamService {

	List<ExamFullInfoDTO> selectExamList(ExamSearchCriteria searchCriteria);
	
	List<ExamCategoryDTO> selectExamCategoryList();

	boolean registExam(ExamDTO exam);
	
	boolean modifyExam(ExamDTO exam);
	
	boolean removeExam(int examNo);

	boolean registExamCategory(ExamCategoryDTO examCategory);
	
	boolean modifyExamCategory(ExamCategoryDTO examCategory);
	
	boolean removeExamCategory(int examCategoryNo);
}
