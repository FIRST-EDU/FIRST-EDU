package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ModifiedScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreListDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;

public interface ScoreService {

	List<ScoreDTO> selectScoreList(ScoreSearchCriteria searchCriteria);
	
	String registScore(ScoreListDTO scoreList);
	
	String modifyScore(ModifiedScoreDTO modifiedScore);
	
	boolean removeScore(int scoreNo);

}
