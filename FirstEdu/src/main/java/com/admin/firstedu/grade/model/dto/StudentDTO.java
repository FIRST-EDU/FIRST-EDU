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
public class StudentDTO {

	private int no;
	private int grade;
	private String studentName;
	private String parentsName;
	private String studentPhone;
	private String parentsPhone;
	private String gender;
	private String birth;
	private String school;
	private String address;
	private java.sql.Date registrationDate;
	private String status;
}
