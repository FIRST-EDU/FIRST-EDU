package com.admin.firstedu.work.model.service;

import java.util.List;
import java.util.Map;

import com.admin.firstedu.work.model.dto.TeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardAndTeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardDTO;
import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;
import com.admin.firstedu.work.model.dto.WorkCardListInfoDTO;

public interface WorkService {

	List<WorkBoardFullInfoDTO> selectWorkBoardList(TeacherDTO teacher);

	WorkBoardAndTeacherDTO registWorkBoard(WorkBoardDTO workBoard);

	WorkBoardFullInfoDTO selectWorkBoard(Map<String, Integer> searchCriteriaMap);

	List<WorkCardListInfoDTO> selectWorkCardList(int boardNo);
	
}
