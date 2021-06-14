package com.admin.firstedu.pay.model.service;

import java.util.List;
import java.util.Map;

import com.admin.firstedu.common.paging.PageInfoDTO;
import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;
import com.admin.firstedu.pay.model.dto.SearchCriteria;
import com.admin.firstedu.pay.model.dto.StudentAndClassInfoDTO;

public interface PayService {

	List<PayListDTO> selectPayList(PageInfoDTO pageInfo);

	List<StudentAndClassInfoDTO> selectStudentList(Map<String, Object> map);
	
	int insertPay(PayDTO pay);
	
	int updatePay(PayDTO pay);

	int deletePay(int no);

//	PayListDTO selectPayDetail(int no);

	PayListDTO selectUpdatePay(int no);

	int selectPaySum();

	List<StudentAndClassInfoDTO> selectClassList(int stuNo);
	
	List<PayListDTO> searchPayYnPayList(Map<String, Object> map);

	List<PayListDTO> searchStudentNamePayList(Map<String, Object> map);

	List<PayListDTO> searchClassNamePayList(Map<String, Object> map);

	int selectTotalCount();
	
	int searchTotalCount(SearchCriteria searchCriteria);

	int searchPaySum(SearchCriteria searchCriteria);

	int selectStudentTotal(SearchCriteria searchCriteria);

	int searchStudentTotalCount(SearchCriteria searchCriteria);

	int selectPayment(int classOne);



}
