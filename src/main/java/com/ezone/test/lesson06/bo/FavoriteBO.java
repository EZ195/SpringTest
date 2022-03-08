package com.ezone.test.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.lesson06.dao.FavoriteDAO;
import com.ezone.test.lesson06.model.Favorite;

@Service
public class FavoriteBO {
	
	@Autowired 
	private FavoriteDAO favoriteDao;
	
	public List<Favorite> getFavoriteList() {
		return favoriteDao.getFavoriteList();
	}
	
	// insert는 삽입된 행의 갯수가 return됨 -> return타입은 int
	public int addFavorite(Favorite favorite) { 
		
		return favoriteDao.addFavorite(favorite);
	}
	
	public boolean isDuplicate(String url) {
		
		int count = favoriteDao.isDuplicate(url);
		
		if (count == 0) {
			return false;
		}
		else {return true;}
	}
	
	public int deleteList(int id) {
		
		return favoriteDao.deleteList(id);
	}

}
