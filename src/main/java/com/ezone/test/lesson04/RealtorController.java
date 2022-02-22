package com.ezone.test.lesson04;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lesson04/test02")
public class RealtorController {
	
	@GetMapping("/inputForm")
	public String inputForm() {
		return "lesson04/test02_inputForm";
	}
	
	@PostMapping("/addRealtor")
	public String addRealtor() {
		
		return "";
	}

}
