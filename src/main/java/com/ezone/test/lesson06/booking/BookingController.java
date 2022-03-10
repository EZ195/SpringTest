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
	
	@GetMapping("/saerchBooking")
	@ResponseBody
	public Map<String, Object> searchBooking(@RequestParam("name") String name,
								@RequestParam("phoneNumber") String phoneNumber) {
		
		// booking으로 리턴타입을 잡고 객체로 만들어주면 알아서 제이슨 형태로 출력해줌
		Booking booking = bookingBo.getBooking(name, phoneNumber);
		
		// Map<String, Object> result = new HashMap<>();
		// result.put(phoneNumber, result);
		
		// json형태 데이터 만들기
		// {"name":"장나라","phoneNumber":"010-2222-0000", "date":"2022-03-10","day":4}
		
		Map<String, Object> result = new HashMap<>();
		if(booking != null) {
			result.put("result","success");
			result.put("booking", booking);
		}
		else {
			result.put("result", "fail");
		}
		return result;
		
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
		
		Map<String, String> result = new HashMap<>();
		
		if (count == 1) {
			result.put("result", "success");
		}
		else {
			result.put("result", "fail");
		}
		return result;
	}
	@ResponseBody
	@GetMapping("/changeState")
	public Map<String, String> changeState(@RequestParam("id") int id) {
		
		int count = bookingBo.changeState(id);
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}
		else {
			result.put("result", "fall");
		}
		return result;
	}

}
