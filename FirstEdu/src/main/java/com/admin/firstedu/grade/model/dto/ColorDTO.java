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
public class ColorDTO implements java.io.Serializable {

	private static final long serialVersionUID = 9189376949059610077L;
	
	private int no;
	String name;
	String codeHex;
}
