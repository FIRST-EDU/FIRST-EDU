package com.admin.firstedu.sms.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.pay.model.dto.PageInfoDTO;
import com.admin.firstedu.pay.model.dto.StudentDTO;
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
	public int selectTotalCount() {
		// TODO Auto-generated method stub
		return smsMapper.selectTotalCount();
	}

	@Override
	public List<SmsAndStudentDTO> selectSmsList() {
		// TODO Auto-generated method stub
		return smsMapper.selectSmsList();
	}

	@Override
	public List<StudentDTO> selectStudentList() {
		// TODO Auto-generated method stub
		return smsMapper.selectStudentList();
	}

	@Override
	public int sendMessage(SmsDTO sms) {
		// TODO Auto-generated method stub
		return smsMapper.sendMessage(sms);
	}

}
