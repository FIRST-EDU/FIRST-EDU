package com.admin.firstedu.attendance.model.service;

import java.util.List;

import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;

public interface AttendanceService {
	
	boolean insertStudent(AttendanceDTO attendance);
	
	boolean insertTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectStudnetAttendance(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectTeacherAttendance(AttendanceDTO attendance);
	
	boolean updateStudentAttendance(AttendanceDTO attendance);

}
