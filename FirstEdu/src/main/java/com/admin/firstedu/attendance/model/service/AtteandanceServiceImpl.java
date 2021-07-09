package com.admin.firstedu.attendance.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public boolean insertTeacher(AttendanceDTO attendance) {
		return mapper.insertTeacher(attendance) > 0 ? true : false;
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
	public List<StudentSetDTO> selectStudent(String className) {
		Map<String, Object> map = new HashMap<>();
		map.put("className", className);
		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("className", "1학년초급영어");
//		map.put("className", "2학년초급영어");
//		map.put("className", "3학년초급영어");
//		map.put("className", "1학년중고급영어");
//		map.put("className", "2학년중고급영어");
//		map.put("className", "3학년중고급영어");
//		map.put("className", "수학 상,하");
//		map.put("className", "수학1");
//		map.put("className", "수학2");
//		map.put("className", "미적분");
//		map.put("className", "기하");
//		map.put("className", "학률과통계");
		
		return mapper.selectStudent(map);
	}




}
