package com.admin.firstedu.student.model.dto;

import java.util.List;

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
public class StudentFullInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = -9151793149758449461L;

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
	private String gradeName;
	private List<StudentClassInfoDTO> classList;
	
}
