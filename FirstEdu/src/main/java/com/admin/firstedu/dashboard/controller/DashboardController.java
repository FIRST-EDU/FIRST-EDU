package com.admin.firstedu.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.admin.firstedu.dashboard.model.dto.StudentClassStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentGradeStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentSchoolStatisticsDTO;
import com.admin.firstedu.dashboard.model.dto.StudentStatisticsDTO;
import com.admin.firstedu.dashboard.model.service.DashboardService;

@Controller
public class DashboardController {

	private final DashboardService dashboardService;
	
	@Autowired
	public DashboardController(DashboardService dashboardService) {
		this.dashboardService = dashboardService;
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {

		/* 원생 관련 */
		/* 총 학생, 금월 신규, 금월 퇴원, 성별별 학생 수 */
		StudentStatisticsDTO studentStatistics = dashboardService.selectStudentStatistics();

		/* 학년별 학생 수 */
		List<StudentGradeStatisticsDTO> studentGradeStatistics = dashboardService.selectStudentGradeStatistics();
		
		/* 강의별 학생 수 */
		List<StudentClassStatisticsDTO> studentClassStatistics = dashboardService.selectStudentClassStatistics();
		
		/* 학교별 학생 수 */
		List<StudentSchoolStatisticsDTO> studentSchoolStatistics = dashboardService.selectStudentSchoolStatistics();
		
		System.out.println(studentStatistics);
		System.out.println(studentGradeStatistics);
		System.out.println(studentClassStatistics);
		System.out.println(studentSchoolStatistics);
		
		/* 선생님 관련 */
		/* 총 선생님 수 */
		/* 총 월 급여 */
		
		/* 매출 관련 */
		/* 총 매출 */
		/* 금일 매출 */
		/* 월별 매출 */
		/* 인건비 비율 */
		
		
		
		return "dashboard/dashboard";
	}
}
