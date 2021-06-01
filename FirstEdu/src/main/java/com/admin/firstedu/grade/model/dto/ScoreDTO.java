package com.admin.firstedu.grade.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ScoreDTO implements java.io.Serializable {

	private static final long serialVersionUID = 6722910210269772872L;

	private int no;
	private int studentNo;
	private int examNo;
	private int subjectNo;
	private String subjectDetail;
	private double targetScore;
	private double score;
	private int classRank;
	private int classPersonnel;
	private int overallRank;
	private int totalPersonnel;
	private String teacherComment;
	private String status;
}
