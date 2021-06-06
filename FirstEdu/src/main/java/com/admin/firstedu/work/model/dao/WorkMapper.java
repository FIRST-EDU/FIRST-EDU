package com.admin.firstedu.work.model.dao;

import java.util.List;

import com.admin.firstedu.work.model.dto.TeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardAndTeacherDTO;
import com.admin.firstedu.work.model.dto.WorkBoardDTO;
import com.admin.firstedu.work.model.dto.WorkBoardFullInfoDTO;

public interface WorkMapper {

	List<WorkBoardFullInfoDTO> selectWorkBoardList(TeacherDTO teacher);

	int insertWorkBoard(WorkBoardDTO workBoard);

	WorkBoardAndTeacherDTO selectWorkBoard();


}
