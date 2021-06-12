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
public class StudentRegistListDTO implements java.io.Serializable {

	private static final long serialVersionUID = 3777691035288414604L;

	private int no;
	private String name;
	private String school;
	private String grade;
	private String studentPhone;
	private String parentsPhone;
	private String registrationDate;
	private List<StudentListClassNameDTO> classList;
}
