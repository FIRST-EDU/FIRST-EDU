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
public class StudentSchoolStatisticsDTO implements java.io.Serializable {

	private static final long serialVersionUID = -3081518731525056081L;

	private String school;
	private int count;
}
