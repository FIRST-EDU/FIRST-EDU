package com.admin.firstedu.pay.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.StudentDTO;

public interface PayDAO {

	List<PayListDTO> selectPayList(SqlSessionTemplate sqlSession);

	List<StudentDTO> selectStudentList(SqlSessionTemplate sqlSession);
	
	int insertPay(SqlSessionTemplate sqlSession, PayDTO pay);

	int deletePay(SqlSessionTemplate sqlSession, PayDTO pay);

	String selectStudent(SqlSessionTemplate sqlSession, int no);


}
