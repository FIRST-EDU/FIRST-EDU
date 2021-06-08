package com.admin.firstedu.consult.model.service;

import java.util.List;

import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultInfoDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;

public interface ConsultService {

	List<ConsultListDTO> selectConsultList();

	List<ConsultInfoDTO> selectStudentList();
	
	List<ConsultListDTO> searchConsultList(SearchCriteria searchCriteria);

	ConsultListDTO selectConsultDetail(int no);
	
	int insertConsult(ConsultDTO consult);
	
	int updateConsult(ConsultDTO consult);
	
	int deleteConsult(int no);

	List<ConsultListDTO> selectStudentConsult(int no);




}
