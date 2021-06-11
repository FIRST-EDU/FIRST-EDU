package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ClassExamInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamListInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;

public interface ExamService {

	List<ExamListInfoDTO> selectExamScheduleList();
	
	List<ExamCategoryFullInfoDTO> selectExamCategoryList();
	
	List<ClassExamInfoDTO> selectClassList();

	List<ExamListInfoDTO> searchExamScheduleList(ExamSearchCriteria searchCriteria);

	int selectTotalCount(ExamSearchCriteria searchCriteria);

	List<ExamListInfoDTO> searchExamList(ExamSearchCriteria searchCriteria);

	boolean registExam(ExamDTO exam);
	
	boolean modifyExam(ExamDTO exam);
	
	boolean removeExam(int examNo);

	boolean registExamCategory(ExamCategoryDTO examCategory);
	
	boolean modifyExamCategory(ExamCategoryDTO examCategory);
	
	boolean removeExamCategory(int examCategoryNo);

	ExamListInfoDTO selectExam(int examNo);

	//List<ScoreListInfoDTO> selectScoreList(int examNo);


}
