package com.ezone.test.lesson06.booking.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ezone.test.lesson06.booking.model.Booking;

@Repository
public interface BookingDAO {
	
	public List<Booking> getList();

}
