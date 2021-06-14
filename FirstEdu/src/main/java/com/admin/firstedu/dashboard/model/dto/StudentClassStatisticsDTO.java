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
public class StudentClassStatisticsDTO implements java.io.Serializable {

	private static final long serialVersionUID = -823511849893968355L;

	private String className;
	private int count;
}
