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
public class ClassExamInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = -667101820346291787L;
	
	private String classCode;
	private String className;
	private int teacherNo;
	private SubjectCategoryDTO subject;
	private GradeDTO hagwonExamGrade;
}
