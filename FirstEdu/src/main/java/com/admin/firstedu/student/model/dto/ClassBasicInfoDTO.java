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
public class ClassBasicInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = 3976782039997969072L;

	private String code;
	private String name;
	private int subjectNo;
}
