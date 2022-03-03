package com.ezone.test.lesson06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ezone.test.lesson06.model.Favorite;

@Repository
public interface FavoriteDAO {
	
	public List<Favorite> getFavoriteList();
	public int addFavorite(Favorite favorite);

}
