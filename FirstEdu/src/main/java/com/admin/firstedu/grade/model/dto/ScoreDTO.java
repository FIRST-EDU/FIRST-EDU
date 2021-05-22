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
public class ScoreDTO implements java.io.Serializable {

	private static final long serialVersionUID = 6722910210269772872L;

	private int no;
	private int examNo;
	private int studentNo;
	private double score;
}
