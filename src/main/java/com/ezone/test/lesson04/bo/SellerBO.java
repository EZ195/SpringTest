package com.ezone.test.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.lesson04.dao.SellerDAO;
import com.ezone.test.lesson04.model.Seller;

@Service
public class SellerBO {
	
	@Autowired
	private SellerDAO sellerDAO;
	public Seller getLastSellerInfo() {
		return sellerDAO.selectLastSellerInfo();				
	}
	
	public int addSellerInfo(String nickname, String profileImageUrl, double temperature) {
		return sellerDAO.addSellerInfo(nickname, profileImageUrl, temperature);
	}
}
