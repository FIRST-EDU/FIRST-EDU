package com.admin.firstedu.work.model.service;

import java.util.List;

import com.admin.firstedu.work.model.dto.TeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;

public interface WorkService {

	List<WorkBoardFullInfoDTO> selectWorkBoardList(TeacherDTO teacher);
	
}
