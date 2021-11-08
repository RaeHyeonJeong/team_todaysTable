package com.todaysTable.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ReviewPagingVO {
	// 현재페이지, 시작페이지, 끝페이지, 게시글 총 갯수, 페이지당 글 갯수, 마지막페이지, SQL쿼리에 쓸 start, end
	private int curPage, startPage, endPage, total, cntPerPage, lastPage, start, end;
	private int cntPage = 5;
	
	public ReviewPagingVO(int total, int curPage, int cntPerPage) {
		setCurPage(curPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getCurPage(), cntPage);
		calcStartEnd(getCurPage(), getCntPerPage());
	}
	
	// 제일 마지막 페이지 계산
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
	}
	
	// 시작, 끝 페이지 계산
	public void calcStartEndPage(int curPage, int cntPage) {
		setEndPage(((int)Math.ceil((double)curPage / (double)cntPage)) * cntPage);
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - cntPage + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}
	
	// DB 쿼리에서 사용할 start, end값 계산
	public void calcStartEnd(int curPage, int cntPerPage) {
		setEnd(curPage * cntPerPage);
		setStart(getEnd() - cntPerPage + 1);
	}
}
