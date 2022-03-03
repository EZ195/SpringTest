package com.ezone.test.weather;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezone.test.weather.bo.WeatherBO;
import com.ezone.test.weather.model.Weather;

@Controller
@RequestMapping("/weather")
public class WeatherController {
	
	@Autowired
	private WeatherBO weatherBO;
	
	@GetMapping("/history")
	public String history(Model model) {
		
		List<Weather> weather = weatherBO.selelctWeatherHistoryList();
		model.addAttribute("weather", weather);
		
		return "/lesson05/weather/weatherHistory";
	}
	@GetMapping("/weatherForm")
	public String weatherForm() {
		
		return "lesson05/weather/weatherForm";
	}
	
	
	@GetMapping("/insertWeather")
	public String insertWeather(
			@DateTimeFormat(pattern="yyyy-mm-dd") //패턴을 스프링프레임워크가 알 수 있도록 잡아줘야함
			@RequestParam("date") Date date,
			@RequestParam("weather") String weather,
			@RequestParam("temperatures") double temperatures,
			@RequestParam("precipitation") double precipitation,
			@RequestParam("microDust") String microDust,
			@RequestParam("windSpeed") double windSpeed) {
		
		int count = weatherBO.insertWeatherInfo(date, weather, temperatures, precipitation, microDust, windSpeed);
		
	
		
		return "redirect:/waether/hitory";
	}
}
