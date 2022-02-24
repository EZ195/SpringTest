package com.ezone.test.lesson05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lesson05")
public class JSTLController {
	
	@GetMapping("/JSTLTest01")
	public String jstl01() {
		return "lesson05/JSTLCore01";
	}
	
	@GetMapping("/JSTLTest02")
	public String jstl02(Model model) {
		
		List<String> musicRanking = new ArrayList<>();
		musicRanking.add("강남스타일");
		musicRanking.add("벚꽃엔딩");
		musicRanking.add("좋은날");
		musicRanking.add("거짓말");
		musicRanking.add("보고싶다");
		
		model.addAttribute("musicR", musicRanking);
		

		return "lesson05/JSTLCore02";
	}
}
