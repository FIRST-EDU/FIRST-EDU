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
public class WorkCardTagAndColorDTO implements java.io.Serializable {
	
	private static final long serialVersionUID = 1441291041302379523L;

	private int tagNo;
	private String tagName;
	private int cardNo;
	private ColorDTO color;
}
