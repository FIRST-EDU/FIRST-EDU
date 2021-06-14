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
public class TeacherStatisticsDTO implements java.io.Serializable {

	private static final long serialVersionUID = -5019770477232710872L;

	private int totalCount;
	private int totalSalary;
}
