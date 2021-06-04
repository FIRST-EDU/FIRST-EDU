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
public class WorkBoardMemberDTO implements java.io.Serializable {

	private static final long serialVersionUID = -7359650543558134957L;

	private int boardNo;
	private int teacherNo;
	private String favoriteYn;
}
