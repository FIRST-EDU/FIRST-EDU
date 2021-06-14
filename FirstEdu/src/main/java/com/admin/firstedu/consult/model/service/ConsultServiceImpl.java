package com.admin.firstedu.consult.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.consult.model.dao.ConsultMapper;
import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;
import com.admin.firstedu.consult.model.dto.StudentAndClassInfoDTO;

@Service("consultService")
public class ConsultServiceImpl implements ConsultService{

	private final ConsultMapper consultMapper;
	
	@Autowired
	public ConsultServiceImpl(ConsultMapper consultMapper) {
		super();
		this.consultMapper = consultMapper;
	}


	@Override
	public List<ConsultListDTO> selectConsultList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return consultMapper.selectConsultList(map);
	}


	@Override
	public List<StudentAndClassInfoDTO> selectStudentList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return consultMapper.selectStudentList(map);
	}


	@Override
	public int insertConsult(ConsultDTO consult) {
		// TODO Auto-generated method stub
		return consultMapper.insertConsult(consult);
	}


	@Override
	public ConsultListDTO selectConsultDetail(int no) {
		// TODO Auto-generated method stub
		return consultMapper.selectConsultDetail(no);
	}


	@Override
	public int updateConsult(ConsultDTO consult) {
		// TODO Auto-generated method stub
		return consultMapper.updateConsult(consult);
	}


	@Override
	public int deleteConsult(int no) {
		// TODO Auto-generated method stub
		return consultMapper.deleteConsult(no);
	}


	@Override
	public List<ConsultListDTO> selectStudentConsult(int no) {
		// TODO Auto-generated method stub
		return consultMapper.selectStudentConsult(no);
	}




	@Override
	public int searchTotalCount(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return consultMapper.searchTotalCount(searchCriteria);
	}


	@Override
	public int selectTodayTotal() {
		// TODO Auto-generated method stub
		return consultMapper.selectTodayTotal();
	}


	@Override
	public int selectStudentTotal(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return consultMapper.selectStudentTotal(searchCriteria);
	}



}
