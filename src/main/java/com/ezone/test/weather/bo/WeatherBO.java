package com.ezone.test.final01.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.final01.dao.WeatherDAO;
import com.ezone.test.final01.model.Weather;

@Service
public class WeatherBO {
	
	@Autowired
	private WeatherDAO weatherDAO;
	
	public List<Weather> selelctWeatherHistoryList() {
	
		return weatherDAO.selectWeatherHistoryList();
	}

}
