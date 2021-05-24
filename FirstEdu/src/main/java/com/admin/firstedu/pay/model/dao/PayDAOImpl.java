package com.admin.firstedu.pay.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.admin.firstedu.pay.model.dto.PayListDTO;

@Repository("payDAO")
public class PayDAOImpl implements PayDAO{

	@Override
	public List<PayListDTO> selectPayList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("PayMapper.selectPayList");
	}

	@Override
	public int insertPay(SqlSessionTemplate sqlSession) {
		return sqlSession.insert("PayMapper.insertPay");
	}

	@Override
	public int deletePay(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.update("PayMapper.deletePay");
	}

	
}
