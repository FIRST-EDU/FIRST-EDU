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
public class ClassListDTO implements java.io.Serializable {

	private static final long serialVersionUID = 2114315250803549629L;

	private List<String> classCode;
}
