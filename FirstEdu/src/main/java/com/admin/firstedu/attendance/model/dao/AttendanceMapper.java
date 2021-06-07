package com.admin.firstedu.attendance.model.dao;

import java.util.List;

import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;
import com.admin.firstedu.attendance.model.dto.ClassInfoStudentDTO;

public interface AttendanceMapper {
	
	int insertStudent(AttendanceDTO attendance);
	
	int insertTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectStudentAttendance();
	
	List<AttendanceInfoDTO> selectTeacherAttendance();
	
	int updateStudentAttendance(AttendanceDTO attendance);

	int doneTeacher(AttendanceDTO attendance);

	List<AttendanceInfoDTO> selectStudent();
	
	List<ClassInfoStudentDTO> selectCategory();
	
}
