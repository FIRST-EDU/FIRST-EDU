package com.admin.firstedu.pay.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.pay.model.dao.PayMapper;
import com.admin.firstedu.pay.model.dto.PageInfoAndSearchValueDTO;
import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.PayPageInfoDTO;
import com.admin.firstedu.pay.model.dto.SearchCriteria;
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
	public List<PayListDTO> selectPayList(PayPageInfoDTO pagaInfo) {
		// TODO Auto-generated method stub
		return payMapper.selectPayList(pagaInfo);
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
	public int selectTotalCount() {
		// TODO Auto-generated method stub
		return payMapper.selectTotalCount();
	}

	@Override
	public List<PayListDTO> searchPayYnPayList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return payMapper.searchPayYnPayList(map);
	}

	@Override
	public List<PayListDTO> searchStudentNamePayList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return payMapper.searchStudentNamePayList(map);
	}

	@Override
	public List<PayListDTO> searchClassNamePayList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return payMapper.searchClassNamePayList(map);
	}

	@Override
	public int searchTotalCount(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return payMapper.searchTotalCount(searchCriteria);
	}

	@Override
	public int searchPaySum(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return payMapper.searchPaySum(searchCriteria);
	}

	

	


	
}
