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
public class ColorDTO implements java.io.Serializable {

	private static final long serialVersionUID = 5703035066909679290L;
	
	private int no;
	private String name;
	private String codeHex;
}
