package com.ezone.test.final01.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ezone.test.final01.model.Weather;

@Repository
public interface WeatherDAO {
	
	public List<Weather> selectWeatherHistoryList();

}
