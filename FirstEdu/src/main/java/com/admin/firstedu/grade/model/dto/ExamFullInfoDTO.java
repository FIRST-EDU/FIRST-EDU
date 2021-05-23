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
public class ExamFullInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = 5779472333951232950L;

	private int no;
	private String name;
	private java.sql.Date examDate;
	private String school;
	private int grade;
	private ExamCategoryDTO category;
	private SubjectCategoryDTO subject;
}
