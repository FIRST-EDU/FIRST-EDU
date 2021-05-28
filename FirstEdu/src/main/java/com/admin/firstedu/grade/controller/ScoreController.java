package com.admin.firstedu.grade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.admin.firstedu.grade.model.service.ScoreService;

@Controller
public class ScoreController {

	private final ScoreService scoreService;

	@Autowired
	public ScoreController(ScoreService scoreService) {
		this.scoreService = scoreService;
	}
	
	/* 성적 조회 */

	
	/* 성적 입력 */
	
	
	/* 성적 수정 */
	
	
	/* 성적 삭제 */

	
}
