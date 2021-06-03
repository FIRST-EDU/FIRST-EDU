package com.admin.firstedu.grade.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.firstedu.grade.model.dao.ScoreMapper;
import com.admin.firstedu.grade.model.dto.ModifiedScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreListDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;

@Service
public class ScoreServiceImpl implements ScoreService {

	private ScoreMapper mapper;
	
	@Autowired
	public ScoreServiceImpl(ScoreMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<ScoreDTO> selectScoreList(ScoreSearchCriteria searchCriteria) {
		return mapper.selectScoreList(searchCriteria);
	}

	@Override
	public String registScore(ScoreListDTO scoreList) {
		return mapper.insertScore(scoreList) > 0 ? "true" : "false";
	}
	
	@Override
	public String modifyScore(ModifiedScoreDTO modifiedScore) {
		return mapper.updateScore(modifiedScore) > 0 ? "true" : "false";
	}

	@Override
	public boolean removeScore(int scoreNo) {
		return false;
	}
}
