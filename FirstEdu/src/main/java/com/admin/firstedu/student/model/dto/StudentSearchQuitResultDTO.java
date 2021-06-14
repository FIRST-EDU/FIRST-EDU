package com.admin.firstedu.student.model.dto;

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
public class StudentSearchQuitResultDTO {

	private List<StudentQuitListDTO> studentList;
	private PageInfoDTO pageInfo;
}
