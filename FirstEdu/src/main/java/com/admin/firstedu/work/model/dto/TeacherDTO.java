package com.admin.firstedu.work.model.dto;

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
public class TeacherDTO implements java.io.Serializable {

	private static final long serialVersionUID = -4653624762056102344L;

	private int no;
	private String jobCode;
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String gender;
	private String phone;
	private String address;
	private String role;
	private java.sql.Date hireDate;
	private java.sql.Date endDate;
	private String status;
}
