package com.admin.firstedu.attendance.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.attendance.model.dao.AttendanceMapper;
import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;

@Service("attendanceService")
public class AtteandanceServiceImpl implements AttendanceService {
	
	private AttendanceMapper mapper;
	
	@Autowired
	public AtteandanceServiceImpl (AttendanceMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public boolean insertStudent(AttendanceDTO attendance) {
		return mapper.insertStudent(attendance) > 0 ? true : false;
	}

	@Override
	public boolean insertTeacher(AttendanceDTO attendance) {
		return mapper.insertTeacher(attendance) > 0 ? true : false;
	}

	@Override
	public List<AttendanceInfoDTO> selectStudnetAttendance(AttendanceDTO attendance) {
		return mapper.selectStudnetAttendance(attendance);
	}

	@Override
	public boolean updateStudentAttendance(AttendanceDTO attendance) {
		return mapper.updateStudentAttendance(attendance) > 0 ? true : false;
	}

	@Override
	public List<AttendanceInfoDTO> selectTeacherAttendance(AttendanceDTO attendance) {
		return mapper.selectTeacherAttendance(attendance);
	}
	
}
