package com.admin.firstedu.classInfo.model.dao;

import java.util.List;
import java.util.Map;

import com.admin.firstedu.classInfo.model.dto.ClassAndInfoDTO;
import com.admin.firstedu.classInfo.model.dto.ClassDTO;
import com.admin.firstedu.classInfo.model.dto.PageInfoDTO;
import com.admin.firstedu.classInfo.model.dto.SearchCriteriaDTO;



public interface ClassInfoMapper {

    
	List<ClassAndInfoDTO> selectClsssAndInfo();

	ClassAndInfoDTO selectClassDetail(int no);

	int insertClassInfo(ClassDTO classDTO);

	ClassAndInfoDTO selectUpdateMember(int no);

	boolean classUpdate(ClassDTO classDTO);

	List<ClassAndInfoDTO> selectTimeTable();

//	List<ClassAndInfoDTO> searchClass(SearchCriteriaDTO searchCriteria);

	int selectTotalCount(SearchCriteriaDTO searchCriteria);

	boolean deleteClass(int no);
	
	List<ClassAndInfoDTO> searchClassList(Map<String, Object> map);

	int searchClassCount(SearchCriteriaDTO searchCriteria);

	List<ClassAndInfoDTO> selectClassList(PageInfoDTO pageInfo);



}
