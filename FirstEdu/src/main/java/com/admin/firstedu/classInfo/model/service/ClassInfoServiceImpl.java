package com.admin.firstedu.classInfo.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.classInfo.model.dao.ClassInfoMapper;
import com.admin.firstedu.classInfo.model.dto.ClassAndInfoDTO;
import com.admin.firstedu.classInfo.model.dto.ClassDTO;
import com.admin.firstedu.classInfo.model.dto.PageInfoDTO;
import com.admin.firstedu.classInfo.model.dto.SearchCriteriaDTO;


@Service
public class ClassInfoServiceImpl implements ClassInfoService {
	
	private ClassInfoMapper classMapper;
	
	@Autowired
	public ClassInfoServiceImpl(ClassInfoMapper classMapper) {
		this.classMapper = classMapper;
	}

	@Override
	public List<ClassAndInfoDTO> selectClsssAndInfo() {
		
		return classMapper.selectClsssAndInfo();
	}

	@Override
	public ClassAndInfoDTO selectClassDetail(int no) {
		
		return classMapper.selectClassDetail(no);
	}
	
	@Override
	public boolean classRegist(ClassDTO classDTO) {
		
		return classMapper.insertClassInfo(classDTO) > 0? true: false;
		
	}

	@Override
	public ClassAndInfoDTO selectUpdateMember(int no) {
		
		return classMapper.selectUpdateMember(no);
	}

	
	@Override
	public boolean classUpdate(ClassDTO classDTO) {
		
		return classMapper.classUpdate(classDTO);
	}

	@Override
	public List<ClassAndInfoDTO> selectTimeTable() {
		
		return classMapper.selectTimeTable();
	}

//	@Override
//	public List<ClassAndInfoDTO> searchClass(SearchCriteriaDTO searchCriteria) {
//		
//		return classMapper.searchClass(searchCriteria);
//	}

	@Override
	public int selectTotalCount(SearchCriteriaDTO searchCriteria) {
		
		return classMapper.selectTotalCount(searchCriteria);
	}


	@Override
	public boolean deleteClass(int no) {
		
		return classMapper.deleteClass(no);
	}


	@Override
	public List<ClassAndInfoDTO> searchClassList(Map<String, Object> map) {
		
		return classMapper.searchClassList(map);
	}

	@Override
	public int searchClassCount(SearchCriteriaDTO searchCriteria) {
		return classMapper.searchClassCount(searchCriteria);
	}

	@Override
	public List<ClassAndInfoDTO> selectClassList(PageInfoDTO pageInfo) {
		
		return classMapper.selectClassList(pageInfo);
	}


}
