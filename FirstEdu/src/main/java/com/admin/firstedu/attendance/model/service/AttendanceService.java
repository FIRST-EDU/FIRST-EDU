package com.admin.firstedu.attendance.model.service;

import java.util.List;

import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;

public interface AttendanceService {
	
	boolean insertStudent(AttendanceDTO attendance);
	
	boolean insertTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectStudnetAttendance();
	
	List<AttendanceInfoDTO> selectTeacherAttendance();
	
	boolean updateStudentAttendance(AttendanceDTO attendance);



}
