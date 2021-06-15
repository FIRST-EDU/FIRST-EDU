package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ClassExamInfoDTO;
import com.admin.firstedu.grade.model.dto.ColorDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamListInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;
import com.admin.firstedu.grade.model.dto.GradeDTO;
import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;

public interface ExamService {

	List<ExamListInfoDTO> selectExamScheduleList();
	
	List<ExamCategoryFullInfoDTO> selectExamCategoryList();
	
	List<ClassExamInfoDTO> selectClassList();

	List<ExamListInfoDTO> searchExamScheduleList(ExamSearchCriteria searchCriteria);

	int selectTotalCount(ExamSearchCriteria searchCriteria);

	List<ExamListInfoDTO> searchExamList(ExamSearchCriteria searchCriteria);

	boolean registExamAndScoreBasicInfo(ExamDTO exam);
	
	boolean modifyExam(ExamDTO exam);
	
	boolean removeExam(int examNo);

	boolean registExamCategory(ExamCategoryDTO examCategory);
	
	boolean modifyExamCategory(ExamCategoryDTO examCategory);
	
	boolean removeExamCategory(int examCategoryNo);

	ExamListInfoDTO selectExam(int examNo);

	List<ScoreDTO> selectScoreList(int examNo);

	List<ColorDTO> selectColorList();

	List<SchoolDTO> selectSchoolList();

	List<GradeDTO> selectGradeList();

}
