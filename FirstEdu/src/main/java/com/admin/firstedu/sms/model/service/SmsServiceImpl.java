package com.admin.firstedu.sms.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.pay.model.dto.SearchCriteria;
import com.admin.firstedu.pay.model.dto.StudentAndClassInfoDTO;
import com.admin.firstedu.sms.model.dao.SmsMapper;
import com.admin.firstedu.sms.model.dto.SmsAndStudentDTO;
import com.admin.firstedu.sms.model.dto.SmsDTO;

@Service("smsService")
public class SmsServiceImpl implements SmsService{
	
	private final SmsMapper smsMapper;

	@Autowired
	public SmsServiceImpl(SmsMapper smsMapper) {
		super();
		this.smsMapper = smsMapper;
	}

	@Override
	public int sendMessage(SmsDTO sms) {
		// TODO Auto-generated method stub
		return smsMapper.sendMessage(sms);
	}

	@Override
	public int selectTotalCount(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return smsMapper.selectTotalCount(searchCriteria);
	}

	@Override
	public List<SmsAndStudentDTO> selectSmsList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return smsMapper.selectSmsList(map);
	}

	@Override
	public int selectStudentTotal(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return smsMapper.selectStudentTotal(searchCriteria);
	}

	@Override
	public List<SmsAndStudentDTO> selectStudentList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return smsMapper.selectStudentList(map);
	}

	@Override
	public SmsAndStudentDTO selectSmsDetail(int no) {
		// TODO Auto-generated method stub
		return smsMapper.selectSmsDetail(no);
	}

}
