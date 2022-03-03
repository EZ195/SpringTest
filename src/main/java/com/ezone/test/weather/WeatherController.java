package com.ezone.test.final01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezone.test.final01.bo.WeatherBO;
import com.ezone.test.final01.model.Weather;

@Controller
@RequestMapping("/weather")
public class WeatherController {
	
	@Autowired
	private WeatherBO weatherBO;
	
	@GetMapping("/history")
	public String history(Model model) {
		
		List<Weather> weather = weatherBO.selelctWeatherHistoryList();
		model.addAttribute("weather", weather);
		
		return "lesson05/weather/weatherHistory";
	}
	@GetMapping("/weatherForm")
	public String weatherForm() {
		
		return "lesson05/weather/weatherForm";
	}
	
	
	@PostMapping("/insertWeather")
	public String insertWeather() {
		
		return "redirect:/weather/history";
	}
}
