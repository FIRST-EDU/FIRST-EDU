package com.admin.firstedu.grade.model.dao;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;

public interface ExamMapper {

	List<ExamFullInfoDTO> selectExamList(ExamSearchCriteria searchCriteria);

	List<ExamCategoryDTO> selectExamCategoryList();

	int insertExam(ExamDTO exam);

	int updateExam(ExamDTO exam);

	int deleteExam(int examNo);

	int insertExamCategory(ExamCategoryDTO examCategory);

	int updateExamCategory(ExamCategoryDTO examCategory);

	int deleteExamCategory(int examCategoryNo);

}
