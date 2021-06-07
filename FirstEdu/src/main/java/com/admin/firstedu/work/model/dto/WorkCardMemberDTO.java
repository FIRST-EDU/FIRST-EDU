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
public class WorkCardMemberDTO implements java.io.Serializable {
	
	private static final long serialVersionUID = 1394066027773000108L;
	
	private int cardNo;
	private int teacherNo;
}
