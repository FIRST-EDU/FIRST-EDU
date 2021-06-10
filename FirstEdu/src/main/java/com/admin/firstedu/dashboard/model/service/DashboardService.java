package com.admin.firstedu.dashboard.model.service;

import java.util.List;

import com.admin.firstedu.dashboard.model.dto.StudentClassStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentGradeStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentSchoolStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.TeacherStatisticsDTO;

public interface DashboardService {

	StudentStatisticsDTO selectStudentStatistics();

	List<StudentGradeStatisticsDTO> selectStudentGradeStatistics();

	List<StudentClassStatisticsDTO> selectStudentClassStatistics();

	List<StudentSchoolStatisticsDTO> selectStudentSchoolStatistics();

	TeacherStatisticsDTO selectTeacherStatistics();

}
