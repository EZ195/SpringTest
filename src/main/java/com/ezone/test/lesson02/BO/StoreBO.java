package com.ezone.test.lesson02.BO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.lesson02.Model.Store;
import com.ezone.test.lesson02.dao.StoreDAO;

@Service
public class StoreBO {
	
		
	@Autowired
	private StoreDAO storeDAO;
		
	public List<Store> getStoreList() {
		
		List<Store> storeList = storeDAO.selectStoreList();
		return storeDAO.selectStoreList();
		
	}
}
