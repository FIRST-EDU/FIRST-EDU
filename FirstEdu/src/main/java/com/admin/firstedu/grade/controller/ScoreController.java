package com.admin.firstedu.grade.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.admin.firstedu.grade.model.dto.ModifiedScoreDTO;
import com.admin.firstedu.grade.model.dto.ScoreFullInfoDTO;
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
		
//		searchCriteria.setStudentNo(2);
		List<Integer> examNoList = new ArrayList<>();
//		examNoList.add(1);
//		examNoList.add(6);
		examNoList.add(26);
		searchCriteria.setExamNoList(examNoList);
		List<Integer> subjectNoList = new ArrayList<>();
//		subjectNoList.add(1);
//		subjectNoList.add(2);
		searchCriteria.setSubjectNoList(subjectNoList);
		List<ScoreFullInfoDTO> scoreList = scoreService.selectScoreList(searchCriteria);
		for(ScoreFullInfoDTO score : scoreList) {
			System.out.println(score);
		}
		
		return gson.toJson(scoreList);
	}
	
	
	/* 성적 입력 -> 시험 등록 시 함께 등록 */
//	@PostMapping("/score/regist")
//	public void registScore(@ModelAttribute ScoreListDTO scoreList,
//			                HttpServletResponse response)
//			                		throws IOException {
//		ScoreDTO score = new ScoreDTO();
//		score.setStudentNo(1);
//		score.setExamNo(1);
//		score.setSubjectNo(1);
//		score.setScore(90);
//		score.setTeacherComment("test");
//		List<ScoreDTO> scoreListTest = new ArrayList<>();
//		scoreListTest.add(score);
//		scoreListTest.add(score);
//		scoreList.setScoreList(scoreListTest);
//		String result = scoreService.registScore(scoreList);
//		
//		response.getWriter().write(result);
//	}
	
	
	/* 성적 등록 */
	@PostMapping("/score/regist")
	public void registScore(@RequestParam(required=false, defaultValue="0") int examNo,
			HttpServletResponse response)
					throws IOException {
		System.out.println(examNo);
		int scoreNo = scoreService.registScore(examNo);
		
		response.getWriter().write(scoreNo);
	}
	
	/* 성적 수정 */
	@PostMapping("/score/modify")
	public void modifyScore(@ModelAttribute ModifiedScoreDTO modifiedScore,
							HttpServletResponse response)
								throws IOException {
		System.out.println(modifiedScore);
		String result = scoreService.modifyScore(modifiedScore);
		
		response.getWriter().write(result);
	}
	
	/* 성적 삭제 */

	
}
