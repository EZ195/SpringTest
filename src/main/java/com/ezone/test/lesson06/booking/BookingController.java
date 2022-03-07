package com.ezone.test.lesson06.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezone.test.lesson06.booking.bo.BookingBO;
import com.ezone.test.lesson06.booking.model.Booking;

@Controller
@RequestMapping("/booking")
public class BookingController {
	
	@Autowired BookingBO bookingBo;
	
	@GetMapping("/main")
	public String main() {
		
		return "lesson06/booking/main";
	}
	
	@GetMapping("/getList")
	public String getList(Model model) {
		
		List<Booking> book = bookingBo.getList();
		model.addAttribute("book" , book);
		
		return "lesson06/booking/bookingList";
	}

}
