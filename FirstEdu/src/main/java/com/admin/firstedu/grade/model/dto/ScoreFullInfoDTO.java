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
public class ScoreFullInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = 2950445852771543932L;

	private int no;
	private String subjectDetail;
	private double targetScore;
	private double score;
	private int scoreGrade;
	private int classRank;
	private int classPersonnel;
	private int overallRank;
	private int totalPersonnel;
	private String teacherComment;
	private StudentAndGradeDTO student;
	private ExamDTO exam;
	private SubjectCategoryDTO subject;
}
