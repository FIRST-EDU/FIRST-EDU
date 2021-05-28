package com.admin.firstedu.grade.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.grade.model.dao.ScoreMapper;
import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;

@Service
public class ScoreServiceImpl implements ScoreService {

	private ScoreMapper mapper;
	
	@Autowired
	public ScoreServiceImpl(ScoreMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<ScoreFullInfoDTO> selectScoreList(ScoreSearchCriteria searchCriteria) {
		return null;
	}

	@Override
	public boolean registScore(ScoreDTO score) {
		return false;
	}

	@Override
	public boolean modifyScore(ScoreDTO score) {
		return false;
	}

	@Override
	public boolean removeScore(int scoreNo) {
		return false;
	}
}
