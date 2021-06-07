package com.admin.firstedu.work.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.work.model.dao.WorkMapper;
import com.admin.firstedu.work.model.dto.TeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardAndTeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardDTO;
import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;
import com.admin.firstedu.work.model.dto.WorkCardListInfoDTO;

@Service("workService")
public class WorkServiceImpl implements WorkService {

	private WorkMapper mapper;
	
	@Autowired
	public WorkServiceImpl(WorkMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<WorkBoardFullInfoDTO> selectWorkBoardList(TeacherDTO teacher) {
		return mapper.selectWorkBoardList(teacher);
	}

	@Override
	public WorkBoardAndTeacherDTO registWorkBoard(WorkBoardDTO workBoard) {
		return mapper.insertWorkBoard(workBoard) > 0 ? mapper.selectRegisteredWorkBoard() : null;
	}

	@Override
	public WorkBoardFullInfoDTO selectWorkBoard(Map<String, Integer> searchCriteriaMap) {
		return mapper.selectWorkBoard(searchCriteriaMap);
	}

	@Override
	public List<WorkCardListInfoDTO> selectWorkCardList(int boardNo) {
		return mapper.selectWorkCardList(boardNo);
	}

	
}
