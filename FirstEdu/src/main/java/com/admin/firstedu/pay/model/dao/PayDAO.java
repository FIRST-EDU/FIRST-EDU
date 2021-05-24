package com.admin.firstedu.pay.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.admin.firstedu.pay.model.dto.PayDTO;

public interface PayDAO {

	List<PayDTO> selectPayList(SqlSessionTemplate sqlSession);

}
