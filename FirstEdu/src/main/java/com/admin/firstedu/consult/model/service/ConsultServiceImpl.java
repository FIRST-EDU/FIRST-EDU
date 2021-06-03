package com.admin.firstedu.consult.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.consult.model.dao.ConsultMapper;
import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultInfoDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;

@Service("consultService")
public class ConsultServiceImpl implements ConsultService{

	private final ConsultMapper consultMapper;
	
	@Autowired
	public ConsultServiceImpl(ConsultMapper consultMapper) {
		super();
		this.consultMapper = consultMapper;
	}


	@Override
	public List<ConsultListDTO> selectConsultList() {
		// TODO Auto-generated method stub
		return consultMapper.selectConsultList();
	}


	@Override
	public List<ConsultInfoDTO> selectStudentList() {
		// TODO Auto-generated method stub
		return consultMapper.selectStudentList();
	}


	@Override
	public int insertConsult(ConsultDTO consult) {
		// TODO Auto-generated method stub
		return consultMapper.insertConsult(consult);
	}


	@Override
	public List<ConsultListDTO> searchConsultList(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return consultMapper.searchConsultList(searchCriteria);
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

}
