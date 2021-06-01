package com.admin.firstedu.pay.model.dao;

import java.util.List;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.StudentAndClassDTO;
import com.admin.firstedu.pay.model.dto.StudentAndClassInfoDTO;

public interface PayMapper {

	List<PayListDTO> selectPayList();

	List<StudentAndClassInfoDTO> selectStudentList();
	
	int insertPay(PayDTO pay);

	int deletePay(int no);

	List<StudentAndClassDTO> selectClass(int stuNo);

	PayListDTO selectPayDetail(int no);

	PayListDTO selectPayUpdate(int no);

	int updatePay(PayDTO pay);

	int selectPaySum();

}
