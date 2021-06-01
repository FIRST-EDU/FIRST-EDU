package com.admin.firstedu.grade.model.dao;

import java.util.List;

import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;

public interface ScoreMapper {

	public List<ScoreDTO> selectScoreList(ScoreSearchCriteria searchCriteria);

}
