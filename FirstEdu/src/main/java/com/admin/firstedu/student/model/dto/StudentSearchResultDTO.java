package com.admin.firstedu.student.model.dto;

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
public class StudentSearchResultDTO {

	private List<StudentRegistListDTO> studentList;
	private PageInfoDTO pageInfo;
}
