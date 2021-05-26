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
public class SubjectCategoryDTO implements java.io.Serializable {

	private static final long serialVersionUID = -2884862352899301811L;

	private int no;
	private String name;
	private String status;
}
