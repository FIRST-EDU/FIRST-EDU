package com.admin.firstedu.dashboard.model.dto;

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
public class StudentGradeStatisticsDTO implements java.io.Serializable {

	private static final long serialVersionUID = 7603254932653399754L;

	private String gradeCode;
	private String gradeName;
	private int count;
}
