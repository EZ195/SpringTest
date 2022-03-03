package com.ezone.test.weather.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.weather.dao.WeatherDAO;
import com.ezone.test.weather.model.Weather;

@Service
public class WeatherBO {
	
	@Autowired
	private WeatherDAO weatherDAO;
	
	public List<Weather> selelctWeatherHistoryList() {
	
		return weatherDAO.selectWeatherHistoryList();
	}
	
	public int insertWeatherInfo(Date date, String weather, double temperatures, double precipitation, String microDust, double windSpeed) {
		
		return weatherDAO.insertWeatherInfo(date, weather, temperatures, precipitation, microDust, windSpeed);
	}

}
