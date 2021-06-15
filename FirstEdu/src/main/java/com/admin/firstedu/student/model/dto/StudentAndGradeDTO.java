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
public class StudentAndGradeDTO implements java.io.Serializable {

	private static final long serialVersionUID = 2219848180339005908L;

	private int no;
	private String studentName;
	private String studentPhone;
	private String parentsName;
	private String parentsPhone;
	private String gender;
	private String school;
	private String address;
	private String birth;
	private java.sql.Date registrationDate;
	private java.sql.Date quitDate;
	private String status;
	private GradeDTO grade;
}
