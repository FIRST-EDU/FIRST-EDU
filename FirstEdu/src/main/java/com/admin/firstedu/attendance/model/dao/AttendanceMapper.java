package com.admin.firstedu.attendance.model.dao;

import java.util.List;
import java.util.Map;

import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;
import com.admin.firstedu.attendance.model.dto.StudentSetDTO;

public interface AttendanceMapper {
	
	
	int insertTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectStudentAttendance();
	
	int deleteStudent(AttendanceDTO attendance);

	int doneTeacher(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectCategory();

	int insertStudent(AttendanceDTO attendance);
	
	List<AttendanceInfoDTO> selectTeacher();
	
	int deleteTeacher(AttendanceDTO attendance);

	List<StudentSetDTO> selectStudent(Map map);
//	List<StudentSetDTO> selectStudent(Map<String, String> map);

}
