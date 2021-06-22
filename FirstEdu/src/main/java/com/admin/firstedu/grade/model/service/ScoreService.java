package com.admin.firstedu.grade.model.service;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ModifiedScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ScoreListDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;

public interface ScoreService {

	List<ScoreFullInfoDTO> selectScoreList(ScoreSearchCriteria searchCriteria);
	
	int registScore(int examNo);
	
	String modifyScore(ModifiedScoreDTO modifiedScore);
	
	String removeScore(int scoreNo);


}
