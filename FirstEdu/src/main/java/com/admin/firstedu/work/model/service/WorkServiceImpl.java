package com.admin.firstedu.work.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.work.model.dao.WorkMapper;
import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;

@Service("workService")
public class WorkServiceImpl implements WorkService {

	private WorkMapper mapper;
	
	@Autowired
	public WorkServiceImpl(WorkMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<WorkBoardFullInfoDTO> selectWorkBoardList() {
		return mapper.selectWorkBoardList();
	}

	
}
