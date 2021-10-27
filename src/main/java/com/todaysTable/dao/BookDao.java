package com.todaysTable.dao;

import java.util.List;

import com.todaysTable.vo.BookVO;
import com.todaysTable.vo.RoomVO;
import com.todaysTable.vo.StoreVO;

public interface BookDao {
	public int getMemberNo(String id);
	public List<RoomVO> selectRooms(int store_no);
	public void insertReservationInfo(BookVO vo);
}
