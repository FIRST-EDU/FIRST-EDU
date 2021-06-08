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
public class ExamListInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = -1059365502961447827L;

	private int examCategoryNo;
	private String examCategoryName;
	private int refCategoryNo;
	private int examNo;
	private String examName;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private String school;
	private String description;
	private ColorDTO color;
	private GradeDTO mockExamGrade;
	private ClassExamInfoDTO classExamInfo;	
}
