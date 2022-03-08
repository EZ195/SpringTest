package com.ezone.test.lesson06.booking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezone.test.lesson06.booking.bo.BookingBO;
import com.ezone.test.lesson06.booking.model.Booking;

@Controller
@RequestMapping("/booking")
public class BookingController {
	
	@Autowired 
	private BookingBO bookingBo;
	
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
	
	@GetMapping("/bookingForm")
	public String bookingForm() {
		return "lesson06/booking/bookingForm";
	}
	
	@PostMapping("/addBooking")
	@ResponseBody
	public Map<String, String> addBooking(@ModelAttribute Booking booking, Model model) {
		
		int count = bookingBo.addBooking(booking);
		model.addAttribute("booking", booking);
		
		Map<String, String> result = new HashMap<String,String>();
		
		if (count == 1) { 
			result.put("result", "success");
		}
		else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	@ResponseBody
	@GetMapping("/deleteBooking")
	public Map<String, String> deleteBooking(@RequestParam("id") int id){
		
		int count = bookingBo.deleteBooking(id);
		
		Map<String, String> result = new HashMap<String,String>();
		
		if (count == 1) {
			result.put("result", "success");
		}
		else {
			result.put("result", "fail");
		}
		return result;
	}

}
