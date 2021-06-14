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
public class HagwonExamScoreBasicInfoDTO {

	private int studentNo;
	private int examNo;
	private int subjectNo;
	private int classPersonnel;
}
