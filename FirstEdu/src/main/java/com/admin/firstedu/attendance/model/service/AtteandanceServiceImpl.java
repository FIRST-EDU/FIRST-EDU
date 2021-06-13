package com.admin.firstedu.attendance.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.attendance.model.dao.AttendanceMapper;
import com.admin.firstedu.attendance.model.dto.AttendanceDTO;
import com.admin.firstedu.attendance.model.dto.AttendanceInfoDTO;
import com.admin.firstedu.attendance.model.dto.StudentSetDTO;

@Service("attendanceService")
public class AtteandanceServiceImpl implements AttendanceService {
	
	private AttendanceMapper mapper;
	
	@Autowired
	public AtteandanceServiceImpl (AttendanceMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int insertTeacher(AttendanceDTO attendance) {
		return mapper.insertTeacher(attendance);
	}

	@Override
	public boolean doneTeacher(AttendanceDTO attendance) {
		return mapper.doneTeacher(attendance) > 0 ? true : false;
	}


	@Override
	public List<AttendanceInfoDTO> selectStudentAttendance() {
		// TODO Auto-generated method stub
		return mapper.selectStudentAttendance();
	}

	@Override
	public List<AttendanceInfoDTO> selectCategory() {
		// TODO Auto-generated method stub
		return mapper.selectCategory();
	}

	@Override
	public int insertStudent(AttendanceDTO attendance) {
		// TODO Auto-generated method stub
		return mapper.insertStudent(attendance);
	}

	@Override
	public int deleteStudent(AttendanceDTO attendance) {
		// TODO Auto-generated method stub
		return mapper.deleteStudent(attendance);
	}

	@Override
	public List<AttendanceInfoDTO> selectTeacher() {
		// TODO Auto-generated method stub
		return mapper.selectTeacher();
	}

	@Override
	public int deleteTeacher(AttendanceDTO attendance) {
		// TODO Auto-generated method stub
		return mapper.deleteTeacher(attendance);
	}

	@Override
	public List<String> selectStudent(String className) {
		String className1 = "1학년중고급영어";
		return mapper.selectStudent(className1);
	}




}
