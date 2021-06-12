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
public class StudentQuitListDTO {

	private int no;
	private String name;
	private String school;
	private String grade;
	private String studentPhone;
	private String parentsPhone;
	private String registrationDate;
	private String quitDate;
	private String quitReason;
	private double lengthOfStay;
	
}
