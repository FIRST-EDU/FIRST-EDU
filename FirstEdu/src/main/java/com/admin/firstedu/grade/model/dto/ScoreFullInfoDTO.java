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
	private double score;
	private String status;
	private ExamDTO exam;
	private StudentDTO student;
}
