package com.ezone.test.lesson06.booking.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.lesson06.booking.dao.BookingDAO;
import com.ezone.test.lesson06.booking.model.Booking;

@Service
public class BookingBO {
	
	@Autowired BookingDAO bookingDao;
	
	public List<Booking> getList(){
		return bookingDao.getList();
	}

}
