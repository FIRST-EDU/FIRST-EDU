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
public class WorkBoardAndTeacherDTO implements java.io.Serializable {

	private static final long serialVersionUID = -8239135701196597756L;

	private int boardNo;
	private String title;
	private TeacherDTO creator;
}
