package com.admin.firstedu.work.model.dto;

import java.util.List;

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
public class WorkCardSummaryInfoDTO implements java.io.Serializable {
	
	private static final long serialVersionUID = 6698322415303056835L;

	private int cardNo;
	private String cardTitle;
	private java.sql.Date dueDate;
	private List<WorkCardTagAndColorDTO> tagList;
	private List<WorkCardMemberAndTeacherDTO> cardMemberList;
}
