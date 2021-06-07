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
public class WorkCardTaskDTO implements java.io.Serializable {

	private static final long serialVersionUID = -4065688857077020881L;
	
	private int taskNo;
	private String taskTitle;
	private int cardNo;
}
