package com.ezone.test.weather.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezone.test.weather.model.Weather;

@Repository
public interface WeatherDAO {
	
	public List<Weather> selectWeatherHistoryList();
	public int insertWeatherInfo(
			@Param("date") Date date,
			@Param("weather") String weather,
			@Param("temperatures") double temperatures,
			@Param("precipitation") double precipitaion,
			@Param("microDust") String microDust,
			@Param("windSpeed") double windSpeed);

}
