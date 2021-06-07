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
public class WorkCardMemberAndTeacherDTO implements java.io.Serializable {

	private static final long serialVersionUID = 4625399163901558409L;
	
	private int cardNo;
    private TeacherDTO teacher;
}
