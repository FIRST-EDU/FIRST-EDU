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
public class WorkBoardDTO implements java.io.Serializable {

	private static final long serialVersionUID = -1470715789952195174L;

	private int boardNo;
	private String title;
	private int creator;
}
