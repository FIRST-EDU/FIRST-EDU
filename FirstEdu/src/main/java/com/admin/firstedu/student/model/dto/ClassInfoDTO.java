package com.admin.firstedu.student.model.dto;

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
public class ClassInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = -6954123856448880838L;

	private int classNo;
	private java.sql.Date beginDate;
	private java.sql.Date endDate;
	private String status;
	private int studentNo;
	private String classCode;
}
