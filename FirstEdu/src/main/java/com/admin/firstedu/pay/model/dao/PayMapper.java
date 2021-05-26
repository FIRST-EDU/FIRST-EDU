package com.admin.firstedu.pay.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.StudentDTO;

public interface PayMapper {

	List<PayListDTO> selectPayList();

	List<StudentDTO> selectStudentList();
	
	int insertPay(PayDTO pay);

	int deletePay(PayDTO pay);

	String selectStudent(int no);


}
