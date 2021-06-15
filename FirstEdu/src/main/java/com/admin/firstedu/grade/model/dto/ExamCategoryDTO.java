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
public class ExamCategoryDTO implements java.io.Serializable {

	private static final long serialVersionUID = 3695683672554027609L;

	private int no;
	private String name;
	private int refCategoryNo;
	private int colorNo;
	private String status;
}
