package com.admin.firstedu.consult.model.dao;

import java.util.List;

import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultInfoDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;

public interface ConsultMapper {

	List<ConsultListDTO> selectConsultList();

	List<ConsultInfoDTO> selectStudentList();

	int insertConsult(ConsultDTO consult);

	List<ConsultListDTO> searchConsultList(SearchCriteria searchCriteria);

	ConsultListDTO selectConsultDetail(int no);

	int updateConsult(ConsultDTO consult);

	int deleteConsult(int no);
		
}
