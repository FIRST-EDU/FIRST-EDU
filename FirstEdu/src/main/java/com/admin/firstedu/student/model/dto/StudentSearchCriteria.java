package com.admin.firstedu.student.model.dto;

import com.admin.firstedu.common.paging.PageInfoDTO;

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
public class StudentSearchCriteria implements java.io.Serializable {

	private static final long serialVersionUID = 4527643742376504671L;

	private String searchOption;
	private String searchValue;
	private String school;
	private String gradeCode;
	private String classCode;
	private String searchStudentName;
	private PageInfoDTO pageInfo;
	
}
