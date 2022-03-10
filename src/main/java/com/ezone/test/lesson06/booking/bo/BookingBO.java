package com.ezone.test.lesson06.booking.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.lesson06.booking.dao.BookingDAO;
import com.ezone.test.lesson06.booking.model.Booking;

@Service
public class BookingBO {
	
	@Autowired 
	private BookingDAO bookingDao;
	
	public List<Booking> getList(){
		return bookingDao.getList();
	}
	
	public int addBooking(Booking booking) {
		
		booking.setState("대기중");
		return bookingDao.addBooking(booking);
	}
	
	public int deleteBooking(int id) {
		return bookingDao.deleteBooking(id);
	}
	
	public Booking getBooking(String name, String phoneNumber) {
		return bookingDao.getBooking(name, phoneNumber);
	}
	
	public int changeState(int id) {
		return bookingDao.updateState(id);
		
	}

}
