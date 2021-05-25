package com.admin.firstedu.pay.model.service;

import java.util.List;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.StudentDTO;

public interface PayService {

	List<PayListDTO> selectPayList();

	List<StudentDTO> selectStudentList();
	
	int insertPay(PayDTO pay);

	int deletePay(PayDTO pay);

	String selectStudent(int no);


}
