package com.admin.firstedu.dashboard.model.dto;

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
public class SalesStatisticsDTO implements java.io.Serializable {
	
	private static final long serialVersionUID = 8946217977771675125L;

	private String month;
	private int sales;
}
