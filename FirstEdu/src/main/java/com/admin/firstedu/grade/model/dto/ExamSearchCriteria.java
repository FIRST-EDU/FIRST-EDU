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
public class ExamSearchCriteria implements java.io.Serializable {

	private static final long serialVersionUID = -2216788908845122216L;

	private int schoolExam;
	private int mockExam;
	private int hagwonExam;
	private int categoryNo;
	private String classCode;
	private String examName;
	private String startDate;
	private String endDate;
	private PageInfoDTO pageInfo;
}
