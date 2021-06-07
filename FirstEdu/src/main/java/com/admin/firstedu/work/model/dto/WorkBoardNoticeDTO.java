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
public class WorkBoardNoticeDTO implements java.io.Serializable {

	private static final long serialVersionUID = 4490402779826181661L;
	
	private int noticeNo;
	private int boardNo;
	private String boardNotice;
}
