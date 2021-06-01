package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;

public interface ScoreService {

	List<ScoreDTO> selectScoreList(ScoreSearchCriteria searchCriteria);
	
	boolean registScore(ScoreDTO score);
	
	boolean modifyScore(ScoreDTO score);
	
	boolean removeScore(int scoreNo);
}
