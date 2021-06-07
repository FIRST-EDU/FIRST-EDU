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
public class WorkCardDTO implements java.io.Serializable {

	private static final long serialVersionUID = -6914709316938970845L;

	private int cardNo;
	private String cardTitle;
	private String description;
	private java.sql.Date dueDate;
	private int listNo;
}
