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
	public int deletePay(int no) {
		// TODO Auto-generated method stub
		return payMapper.deletePay(no);
	}

	@Override
	public PayListDTO selectPayDetail(int no) {
		// TODO Auto-generated method stub
		return payMapper.selectPayDetail(no);
	}

	@Override
	public PayListDTO selectUpdatePay(int no) {
		// TODO Auto-generated method stub
		return payMapper.selectPayUpdate(no);
	}

	@Override
	public int updatePay(PayDTO pay) {
		// TODO Auto-generated method stub
		return payMapper.updatePay(pay);
	}

	@Override
	public int selectPaySum() {
		// TODO Auto-generated method stub
		return payMapper.selectPaySum();
	}

	@Override
	public List<StudentAndClassDTO> selectClassList(int stuNo) {
		// TODO Auto-generated method stub
		return payMapper.selectClassList(stuNo);
	}

	@Override
	public List<StudentAndClassInfoDTO> searchStudentNoPayList(int searchValueNo) {
		// TODO Auto-generated method stub
		return payMapper.searchStudentNoPayList(searchValueNo);
	}

	@Override
	public List<StudentAndClassInfoDTO> searchStudentNamePayList(String searchValue) {
		// TODO Auto-generated method stub
		return payMapper.searchStudentNamePayList(searchValue);
	}

	@Override
	public List<StudentAndClassInfoDTO> searchClassNamePayList(String searchValue) {
		// TODO Auto-generated method stub
		return payMapper.searchClassNamePayList(searchValue);
	}

	


	
}
