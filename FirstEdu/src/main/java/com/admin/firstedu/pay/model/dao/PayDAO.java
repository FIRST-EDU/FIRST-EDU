package com.admin.firstedu.pay.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.admin.firstedu.pay.model.dto.PayListDTO;

public interface PayDAO {

	List<PayListDTO> selectPayList(SqlSessionTemplate sqlSession);

	int insertPay(SqlSessionTemplate sqlSession);

	int deletePay(SqlSessionTemplate sqlSession);

}
