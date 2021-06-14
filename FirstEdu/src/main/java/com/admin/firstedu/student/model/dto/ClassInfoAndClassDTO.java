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
public class ClassInfoAndClassDTO implements java.io.Serializable {

	private static final long serialVersionUID = 8342836678235799851L;

	private int classNo;
	private java.sql.Date beginDate;
	private java.sql.Date endDate;
	private StudentDTO no;
	private ClassDTO classCode;
}
