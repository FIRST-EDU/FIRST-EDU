package com.admin.firstedu.consult.model.dao;

import java.util.List;
import java.util.Map;

import com.admin.firstedu.consult.model.dto.ConsultDTO;
import com.admin.firstedu.consult.model.dto.ConsultListDTO;
import com.admin.firstedu.consult.model.dto.SearchCriteria;
import com.admin.firstedu.consult.model.dto.StudentAndClassInfoDTO;

public interface ConsultMapper {

	List<ConsultListDTO> selectConsultList(Map<String, Object> map);

	List<StudentAndClassInfoDTO> selectStudentList(Map<String, Object> map);

	int insertConsult(ConsultDTO consult);

	ConsultListDTO selectConsultDetail(int no);

	int updateConsult(ConsultDTO consult);

	int deleteConsult(int no);

	List<ConsultListDTO> selectStudentConsult(int no);

	int searchTotalCount(SearchCriteria searchCriteria);

	int selectTodayTotal();

	int selectStudentTotal(SearchCriteria searchCriteria);
		
}
