package com.ezone.test.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezone.test.lesson06.model.Favorite;

@Repository
public interface FavoriteDAO {
	
	public List<Favorite> getFavoriteList();
	public int addFavorite(Favorite favorite);
	public int isDuplicate(@Param("url") String url);
}
