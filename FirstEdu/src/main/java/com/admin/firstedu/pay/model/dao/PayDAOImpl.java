package com.admin.firstedu.pay.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.admin.firstedu.pay.model.dto.PayDTO;

@Repository("payDAO")
public class PayDAOImpl implements PayDAO{

	@Override
	public List<PayDTO> selectPayList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("PayMapper.selectPayList");
	}

	
}
