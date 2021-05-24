package com.admin.firstedu.pay.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.pay.model.dao.PayDAO;
import com.admin.firstedu.pay.model.dto.PayDTO;

@Service("payService")
public class PayServiceImpl implements PayService{

	private final PayDAO payDAO;
	private final SqlSessionTemplate sqlSession;
	
	@Autowired
	public PayServiceImpl(PayDAO payDAO, SqlSessionTemplate sqlSession) {
		super();
		this.payDAO = payDAO;
		this.sqlSession = sqlSession;
	}

	@Override
	public List<PayDTO> selectPayList() {
		// TODO Auto-generated method stub
		return payDAO.selectPayList(sqlSession);
	}

	
}
