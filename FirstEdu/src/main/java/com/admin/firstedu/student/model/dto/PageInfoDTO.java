package com.admin.firstedu.student.model.dto;

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
public class PageInfoDTO implements java.io.Serializable {

	private static final long serialVersionUID = -8400936381246690950L;

	private int pageNo;			// 요청 페이지
	private int totalCount;		// 전체 게시물 수
	private int limit;			// 한 페이지에 보여줄 게시물 수
	private int buttonAmount;	// 한 번에 보여줄 페이징 버튼의 수
	private int maxPage;		// 총 페이지 수
	private int startPage;		// 한 번에 보여줄 페이징 버튼의 시작하는 페이지
	private int endPage;		// 한 번에 보여줄 페이징 버튼의 마지막 페이지
	private int startRow;		// DB 조회 시 행의 시작 row 번호
	private int endRow;			// DB 조회 시 행의 마지막 row 번호
}
