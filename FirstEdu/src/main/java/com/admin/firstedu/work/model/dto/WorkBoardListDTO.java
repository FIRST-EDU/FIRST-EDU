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
public class WorkBoardListDTO implements java.io.Serializable {

	private static final long serialVersionUID = 4809749100542964645L;
	
	private int listNo;
	private String listType;
	private int orderNo;
	private String listName;
	private int boardNo;
}
