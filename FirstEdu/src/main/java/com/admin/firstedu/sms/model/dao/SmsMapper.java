package com.admin.firstedu.sms.model.dao;

import java.util.List;
import java.util.Map;

import com.admin.firstedu.pay.model.dto.SearchCriteria;
import com.admin.firstedu.pay.model.dto.StudentAndClassInfoDTO;
import com.admin.firstedu.sms.model.dto.SmsAndStudentDTO;
import com.admin.firstedu.sms.model.dto.SmsDTO;

public interface SmsMapper {

	int sendMessage(SmsDTO sms);

	int selectTotalCount(SearchCriteria searchCriteria);

	List<SmsAndStudentDTO> selectSmsList(Map<String, Object> map);

	int selectStudentTotal(SearchCriteria searchCriteria);

	List<SmsAndStudentDTO> selectStudentList(Map<String, Object> map);

}
