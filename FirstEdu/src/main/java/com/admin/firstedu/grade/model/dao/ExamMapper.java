package com.admin.firstedu.grade.model.dao;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ClassExamInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamListInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;

public interface ExamMapper {

	List<ExamListInfoDTO> selectExamList();

	List<ExamListInfoDTO> searchExamList(ExamSearchCriteria searchCriteria);

	List<ExamCategoryFullInfoDTO> selectExamCategoryList();

	List<ClassExamInfoDTO> selectClassList();


	int insertExam(ExamDTO exam);

	int updateExam(ExamDTO exam);

	int deleteExam(int examNo);

	int insertExamCategory(ExamCategoryDTO examCategory);

	int updateExamCategory(ExamCategoryDTO examCategory);

	int deleteExamCategory(int examCategoryNo);


}
