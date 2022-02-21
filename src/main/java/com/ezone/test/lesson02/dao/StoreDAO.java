package com.ezone.test.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ezone.test.lesson02.Model.Store;

@Repository
public interface StoreDAO {
	
	public List<Store> selectStoreList();
}
