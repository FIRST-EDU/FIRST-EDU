package com.admin.firstedu.grade.model.dto;

import java.sql.Date;

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
public class ExamDTO implements java.io.Serializable {

	private static final long serialVersionUID = 223408131799487788L;
	
	private int no;
	private int categoryNo;
	private String name;
	private java.sql.Date examDate;
	private String school;
	private int grade;
	private int subjectNo;
	private String status;

}
