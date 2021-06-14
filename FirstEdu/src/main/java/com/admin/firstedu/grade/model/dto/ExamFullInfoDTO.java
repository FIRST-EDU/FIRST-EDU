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

	private int examNo;
	private String examName;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private String school;
	private String description;
	private GradeDTO mockExamGrade;
	private ClassExamInfoDTO classExamInfo;
}
