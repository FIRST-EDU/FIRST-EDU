package com.admin.firstedu.grade.model.dto;

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
public class ScoreSearchCriteria implements java.io.Serializable {

	private static final long serialVersionUID = 70110982862320653L;

	private int examNo;
	private int studentNo;
}
