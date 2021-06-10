package com.admin.firstedu.classInfo.model.dao;

import java.util.List;
import java.util.Map;

import com.admin.firstedu.classInfo.model.dto.ClassAndInfoDTO;
import com.admin.firstedu.classInfo.model.dto.ClassDTO;
import com.admin.firstedu.classInfo.model.dto.SearchCriteriaDTO;



public interface ClassInfoMapper {

	List<ClassAndInfoDTO> selectClsssAndInfo();

	ClassAndInfoDTO selectClassDetail(int no);

	int insertClassInfo(ClassDTO classDTO);

	ClassAndInfoDTO selectUpdateMember(int no);

	boolean classUpdate(ClassDTO classDTO);

	List<ClassAndInfoDTO> selectTimeTable();

	List<ClassAndInfoDTO> searchClass(SearchCriteriaDTO searchCriteria);

	int selectTotalCount(SearchCriteriaDTO searchCriteria);

	List<ClassAndInfoDTO> searchClassList(Map<String, Object> map);

	boolean deleteClass(int no);

	int searchClassCount(SearchCriteriaDTO searchCriteria);

}
