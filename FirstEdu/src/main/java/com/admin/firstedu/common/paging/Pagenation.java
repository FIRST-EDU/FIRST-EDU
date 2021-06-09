package com.admin.firstedu.common.paging;

import com.admin.firstedu.grade.model.dto.PageInfoDTO;

public class Pagenation {

	public static PageInfoDTO getPageInfo(int pageNo, int totalCount, int limit, int buttonAmount) {
		int maxPage;
		int startPage;
		int endPage;
		int startRow;
		int endRow;
		
		/* 총 페이지 수 계산 */
		maxPage = (int) Math.ceil((double) totalCount / limit);
		
		/* 현재 화면에서 시작 페이지 */
		startPage = (int) (Math.ceil((double) pageNo / buttonAmount) - 1) * buttonAmount + 1;
		
		/* 현재 화면에서 마지막 페이지 */
		endPage = startPage + buttonAmount - 1;
		if(maxPage < endPage) {		// 총 페이지 수가 더 작은 경우
			endPage = maxPage;
		}
		
		startRow = (pageNo - 1) * limit + 1;
		endRow = startRow + limit - 1;
		
		return new PageInfoDTO(pageNo, totalCount, limit, buttonAmount, maxPage, startPage, endPage, startRow, endRow);
	}
}
