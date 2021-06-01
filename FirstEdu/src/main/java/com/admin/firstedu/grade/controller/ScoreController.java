package com.admin.firstedu.grade.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.admin.firstedu.grade.model.dto.ScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreSearchCriteria;
import com.admin.firstedu.grade.model.service.ScoreService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/grade/*")
public class ScoreController {

	private final ScoreService scoreService;

	@Autowired
	public ScoreController(ScoreService scoreService) {
		this.scoreService = scoreService;
	}
	
	@GetMapping("/score")
	public void scoreManagementForm() {}

	/* 성적 조회 */
	@GetMapping(value="/score/list", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectScoreList(@ModelAttribute ScoreSearchCriteria searchCriteria) {
		
		System.out.println("test");
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		
		searchCriteria.setStudentNo(2);
		List<Integer> examNoList = new ArrayList<>();
		examNoList.add(1);
		examNoList.add(6);
		examNoList.add(20);
		searchCriteria.setExamNoList(examNoList);
		List<Integer> subjectNoList = new ArrayList<>();
		subjectNoList.add(1);
		subjectNoList.add(2);
		searchCriteria.setSubjectNoList(subjectNoList);
		List<ScoreDTO> scoreList = scoreService.selectScoreList(searchCriteria);
		for(ScoreDTO score : scoreList) {
			System.out.println(score);
		}
		
		return gson.toJson(scoreList);
	}
	
	
	/* 성적 입력 */
	
	
	/* 성적 수정 */
	
	
	/* 성적 삭제 */

	
}
