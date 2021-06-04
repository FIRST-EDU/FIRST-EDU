package com.admin.firstedu.work.model.dao;

import java.util.List;

import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;

public interface WorkMapper {

	List<WorkBoardFullInfoDTO> selectWorkBoardList();

}
