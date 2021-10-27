package com.todaysTable.service;

import java.util.List;

import com.todaysTable.vo.BookVO;
import com.todaysTable.vo.RoomVO;
import com.todaysTable.vo.StoreVO;

public interface BookService {
	
	public int getMemberNo(String id);
	public String getReserveDate(String reserveDate, String reserveTime);
	public void insertReservationInfo(BookVO vo);
	public List<RoomVO> selectRooms(int store_no);
}
