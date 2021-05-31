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
public class ExamCategoryFullInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = 8400701050955495748L;

	private int no;
	private String name;
	private ExamCategoryDTO refCategory;
	private ColorDTO color;
}
