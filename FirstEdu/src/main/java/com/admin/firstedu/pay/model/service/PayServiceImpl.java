package com.admin.firstedu.pay.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionManager;

import com.admin.firstedu.pay.model.dao.PayMapper;
import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.StudentAndClassDTO;
import com.admin.firstedu.pay.model.dto.StudentAndClassInfoDTO;

@Service("payService")
public class PayServiceImpl implements PayService{

	private final PayMapper payMapper;

	@Autowired
	public PayServiceImpl(PayMapper payMapper) {
		super();
		this.payMapper = payMapper;
	}

	@Override
	public List<PayListDTO> selectPayList() {
		// TODO Auto-generated method stub
		return payMapper.selectPayList();
	}

	@Override
	public List<StudentAndClassInfoDTO> selectStudentList() {
		// TODO Auto-generated method stub
		return payMapper.selectStudentList();
	}
	
	@Override
	public int insertPay(PayDTO pay) {
		// TODO Auto-generated method stub
		return payMapper.insertPay(pay);
	}

	@Override
	public int deletePay(PayDTO pay) {
		// TODO Auto-generated method stub
		return payMapper.deletePay(pay);
	}

	@Override
	public List<StudentAndClassDTO> selectClass(int stuNo) {
		// TODO Auto-generated method stub
		return payMapper.selectClass(stuNo);
	}


	
}
