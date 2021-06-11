package com.admin.firstedu.dashboard.model.dao;

import java.util.List;

import com.admin.firstedu.dashboard.model.dto.SalaryStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.SalesStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentClassStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentGradeStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentSchoolStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.TeacherStatisticsDTO;

public interface DashboardMapper {

	StudentStatisticsDTO selectStudentStatistics();

	List<StudentGradeStatisticsDTO> selectStudentGradeStatistics();

	List<StudentClassStatisticsDTO> selectStudentClassStatistics();

	List<StudentSchoolStatisticsDTO> selectStudentSchoolStatistics();

	TeacherStatisticsDTO selectTeacherStatistics();

	int selectTotalSales();

	List<SalesStatisticsDTO> selectSalesStatistics();

	List<SalaryStatisticsDTO> selectSalaryStatistics();

	int selectDday();

}
