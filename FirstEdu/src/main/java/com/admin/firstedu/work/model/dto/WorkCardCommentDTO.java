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
public class WorkCardCommentDTO implements java.io.Serializable {

	private static final long serialVersionUID = 5946967376249639703L;
	
	private int commentNo;
	private int cardNo;
	private String content;
	private java.sql.Date createDate;
	private String viewYn;
	private int writer;
}
