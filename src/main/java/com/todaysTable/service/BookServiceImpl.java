package com.todaysTable.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.BookDao;
import com.todaysTable.dao.DetailDao;
import com.todaysTable.vo.BookVO;
import com.todaysTable.vo.RoomVO;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	private BookDao dao;
	
	@Override
	public String getReserveDate(String reserveDate, String reserveTime) {
		String reserveDate_year = reserveDate.substring(6);
		String reserveDate_month = reserveDate.substring(3,5);
		String reserveDate_day = reserveDate.substring(0,2);
		reserveDate = reserveDate_year.concat("/").concat(reserveDate_month).concat("/").concat(reserveDate_day);
		if(!reserveTime.substring(0,2).equals("12") && reserveTime.substring(reserveTime.length()-2).equals("PM")) {
			reserveTime = String.valueOf((Integer.parseInt(reserveTime.substring(0, 1)) + 12)) + ":00";
		}
		reserveDate = reserveDate.concat(" ").concat(reserveTime.substring(0, 5));
		return reserveDate;
	}
	
	@Override
	public void insertReservationInfo(BookVO vo) {
		dao.insertReservationInfo(vo);
	}
	
	@Override
	public List<RoomVO> selectRooms(int store_no) {
		return dao.selectRooms(store_no);
	}

	@Override
	public boolean isAlreadyBooked(BookVO vo) {
		// TODO Auto-generated method stub
		return dao.isAlreadyBooked(vo);
	}
	
}
