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
public class WorkCardListInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = -3438591701651200399L;

	private int listNo;
	private String listType;
	private int boardNo;
	private int orderNo;
	private String listName;
	private List<WorkCardSummaryInfoDTO> workCardList;
}
