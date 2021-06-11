package com.admin.firstedu.pay.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.pay.model.dao.PayMapper;
import com.admin.firstedu.pay.model.dto.PageInfoDTO;
import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
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
	public List<PayListDTO> selectPayList(PageInfoDTO pagaInfo) {
		return payMapper.selectPayList(pagaInfo);
	}

	@Override
	public List<StudentAndClassInfoDTO> selectStudentList(Map<String, Object> map) {
		return payMapper.selectStudentList(map);
	}
	
	@Override
	public int insertPay(PayDTO pay) {
		return payMapper.insertPay(pay);
	}

	@Override
	public int deletePay(int no) {
		return payMapper.deletePay(no);
	}

	/*
	 * @Override public PayListDTO selectPayDetail(int no) { // TODO Auto-generated
	 * method stub return payMapper.selectPayDetail(no); }
	 */

	@Override
	public PayListDTO selectUpdatePay(int no) {
		return payMapper.selectPayUpdate(no);
	}

	@Override
	public int updatePay(PayDTO pay) {
		return payMapper.updatePay(pay);
	}

	@Override
	public int selectPaySum() {
		return payMapper.selectPaySum();
	}

	@Override
	public List<StudentAndClassInfoDTO> selectClassList(int stuNo) {
		return payMapper.selectClassList(stuNo);
	}

	@Override
	public int selectTotalCount() {
		return payMapper.selectTotalCount();
	}

	@Override
	public List<PayListDTO> searchPayYnPayList(Map<String, Object> map) {
		return payMapper.searchPayYnPayList(map);
	}

	@Override
	public List<PayListDTO> searchStudentNamePayList(Map<String, Object> map) {
		return payMapper.searchStudentNamePayList(map);
	}

	@Override
	public List<PayListDTO> searchClassNamePayList(Map<String, Object> map) {
		return payMapper.searchClassNamePayList(map);
	}

	@Override
	public int searchTotalCount(SearchCriteria searchCriteria) {
		return payMapper.searchTotalCount(searchCriteria);
	}

	@Override
	public int searchPaySum(SearchCriteria searchCriteria) {
		return payMapper.searchPaySum(searchCriteria);
	}

	@Override
	public int selectStudentTotal(SearchCriteria searchCriteria) {
		return payMapper.selectStudentTotal(searchCriteria);
	}

	@Override
	public int searchStudentTotalCount(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return payMapper.searchStudentTotalCount(searchCriteria);
	}

	@Override
	public int selectPayment(int classOne) {
		// TODO Auto-generated method stub
		return payMapper.selectPayment(classOne);
	}

	

	


	
}
