package com.admin.firstedu.grade.model.dto;

import java.util.List;

import com.admin.firstedu.common.paging.PageInfoDTO;

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
public class ExamSearchResultDTO implements java.io.Serializable {

	private static final long serialVersionUID = -1666255611487006919L;

	private List<ExamListInfoDTO> examList;
	private PageInfoDTO pageInfo;
}
