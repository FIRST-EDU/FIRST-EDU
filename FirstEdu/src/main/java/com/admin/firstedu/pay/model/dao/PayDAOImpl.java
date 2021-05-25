package com.admin.firstedu.pay.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.StudentDTO;

@Repository("payDAO")
public class PayDAOImpl implements PayDAO{

	@Override
	public List<PayListDTO> selectPayList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("PayMapper.selectPayList");
	}

	@Override
	public List<StudentDTO> selectStudentList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("PayMapper.selectStudentList");
	}
	
	@Override
	public int insertPay(SqlSessionTemplate sqlSession, PayDTO pay) {
		return sqlSession.insert("PayMapper.insertPay", pay);
	}

	@Override
	public int deletePay(SqlSessionTemplate sqlSession, PayDTO pay) {
		// TODO Auto-generated method stub
		return sqlSession.update("PayMapper.deletePay", pay);
	}

	@Override
	public String selectStudent(SqlSessionTemplate sqlSession, int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("PayMapper.selectStudent", no);
	}



	
}
