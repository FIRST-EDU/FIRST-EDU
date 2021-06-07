package com.admin.firstedu.attendance.model.service;

import java.util.List;

import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;
import com.admin.firstedu.attendance.model.dto.ClassInfoStudentDTO;

public interface AttendanceService {
	
	boolean insertStudent(AttendanceDTO attendance);
	
	boolean insertTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectStudentAttendance();
	
//	List<AttendanceInfoDTO> selectTeacherAttendance();
	
	boolean updateStudentAttendance(AttendanceDTO attendance);

	boolean doneTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectStudent();

	List<ClassInfoStudentDTO> selectCategory();



}
