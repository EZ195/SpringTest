package com.ezone.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezone.test.lesson04.bo.RealtorBO;
import com.ezone.test.lesson04.model.Realtor;

@Controller
@RequestMapping("/lesson04/test02")
public class RealtorController {
	
	@Autowired
	private RealtorBO realtorBO;
	
	@GetMapping("/1")
	public String inputForm() {
		return "lesson04/test02_inputForm";
	}
	
	@PostMapping("/addRealtor")
	public String addRealtor(@ModelAttribute Realtor realtor, Model model) { 
		
		int count = realtorBO.addRealtorInfo(realtor);
		model.addAttribute("realtor", realtor);
		
		return "lesson04/test02_Result";
	}

}
