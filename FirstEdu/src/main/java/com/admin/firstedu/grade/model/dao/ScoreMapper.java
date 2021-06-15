package com.admin.firstedu.grade.model.dao;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ModifiedScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreFullInfoDTO;
import com.admin.firstedu.grade.model.dto.ScoreListDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;

public interface ScoreMapper {

	public List<ScoreFullInfoDTO> selectScoreList(ScoreSearchCriteria searchCriteria);

	public int insertScore(int examNo);

	public int updateScore(ModifiedScoreDTO modifiedScore);

}
