package com.admin.firstedu.grade.model.dao;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ClassExamInfoDTO;
import com.admin.firstedu.grade.model.dto.ColorDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryDTO;
import com.admin.firstedu.grade.model.dto.ExamCategoryFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamDTO;
import com.admin.firstedu.grade.model.dto.ExamListInfoDTO;
import com.admin.firstedu.grade.model.dto.ExamSearchCriteria;
import com.admin.firstedu.grade.model.dto.GradeDTO;
import com.admin.firstedu.grade.model.dto.HagwonExamScoreBasicInfoDTO;
import com.admin.firstedu.grade.model.dto.HagwonExamScoreBasicInfoListDTO;
import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.StudentDTO;
import com.admin.firstedu.student.model.dto.SchoolDTO;

public interface ExamMapper {

	List<ExamListInfoDTO> selectExamScheduleList();

	List<ExamCategoryFullInfoDTO> selectExamCategoryList();

	List<ClassExamInfoDTO> selectClassList();
	
	List<ColorDTO> selectColorList();

	List<ExamListInfoDTO> searchExamScheduleList(ExamSearchCriteria searchCriteria);

	int selectTotalCount(ExamSearchCriteria searchCriteria);
	
	List<ExamListInfoDTO> searchExamList(ExamSearchCriteria searchCriteria);

	int insertExam(ExamDTO exam);

	int selectRegisteredExamNo();

	List<StudentDTO> selectSchoolExamStudentList(int examNo);
	
	List<StudentDTO> selectMockExamStudentList(int examNo);

	List<HagwonExamScoreBasicInfoDTO> selectHagwonExamScoreBasicInfoList(int examNo);
	int insertHagwonExamScoreBasicInfo(HagwonExamScoreBasicInfoListDTO hagwonExamScoreBasicInfoList);

	int updateExam(ExamDTO exam);

	int deleteExam(int examNo);

	int insertExamCategory(ExamCategoryDTO examCategory);

	int updateExamCategory(ExamCategoryDTO examCategory);

	int deleteExamCategory(int examCategoryNo);

	ExamListInfoDTO selectExam(int examNo);

	List<ScoreDTO> selectScoreList(int examNo);

	List<SchoolDTO> selectSchoolList();

	List<GradeDTO> selectGradeList();

}
