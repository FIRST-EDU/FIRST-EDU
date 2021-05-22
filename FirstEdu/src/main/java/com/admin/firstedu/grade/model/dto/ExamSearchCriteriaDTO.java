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
public class ExamSearchCriteriaDTO implements java.io.Serializable {

	private static final long serialVersionUID = -2216788908845122216L;

	private String category;
	private String name;
	private String beginDate;
	private String endDate;
	private String school;
	private String grade;
	private String subject;
}
