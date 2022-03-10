package com.ezone.test.lesson06.booking.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezone.test.lesson06.booking.model.Booking;

@Repository
public interface BookingDAO {
	
	public List<Booking> getList();
	public int addBooking(Booking booking);
	public int deleteBooking(@Param("id") int id);
	public Booking getBooking(@Param("name") String name,@Param("phoneNumber") String phoneNumber);
	public int updateState(@Param("id") int id);

}
