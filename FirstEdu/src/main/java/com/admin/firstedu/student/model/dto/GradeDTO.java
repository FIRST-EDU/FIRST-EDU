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
public class GradeDTO implements java.io.Serializable {

	private static final long serialVersionUID = 2619804421830264319L;

	private String code;
	private String name;
}
