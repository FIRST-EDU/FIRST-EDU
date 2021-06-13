package com.admin.firstedu.attendance.model.service;

import java.util.List;

import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceTDTO;
import com.admin.firstedu.attendance.model.dto.StudentSetDTO;

public interface AttendanceService {
	
	int insertStudent(AttendanceDTO attendance);
	
	int insertTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectStudentAttendance();

	boolean doneTeacher(AttendanceDTO attendance);
	
	List<String> selectStudent(String className);

	List<AttendanceInfoDTO> selectCategory();

	int deleteStudent(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectTeacher();

	int deleteTeacher(AttendanceDTO attendance);

}
