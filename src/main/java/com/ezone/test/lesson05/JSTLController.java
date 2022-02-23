package com.ezone.test.lesson05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JSTLController {
	
	@RequestMapping("/lesson05/JSTL")
	public String jstl() {
		return "lesson05/JSTLCore01";
	}
}
