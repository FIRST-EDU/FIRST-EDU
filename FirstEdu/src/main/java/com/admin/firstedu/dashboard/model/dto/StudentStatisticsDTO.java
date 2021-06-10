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
public class StudentStatisticsDTO implements java.io.Serializable {

	private static final long serialVersionUID = 1935239116521840553L;

	private int totalCount;		// 총 학생 수
	private int newCount;		// 금월 신규 등록 수
	private int quitCount;		// 금월 퇴원생 수
	private int femaleCount;	// 여학생 수
	private int maleCount;		// 남학생 수
}
