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
public class WorkCardTaskChecklistDTO implements java.io.Serializable {

	private static final long serialVersionUID = -5106418785187708952L;
	
	private int checkNo;
	private String checkTitle;
	private String checkStatus;
	private int taskNo;
}
