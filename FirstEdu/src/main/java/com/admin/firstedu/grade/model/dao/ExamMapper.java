package com.admin.firstedu.grade.model.dao;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteriaDTO;

public interface ExamMapper {

	int insertExam(ExamDTO exam);

	List<ExamFullInfoDTO> selectExamList(ExamSearchCriteriaDTO searchCriteria);

	int updateExam(ExamDTO exam);

	int deleteExam(int examNo);
}
