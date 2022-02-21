package com.ezone.test.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.ezone.test.lesson04.model.Seller;

@Repository
public interface SellerDAO {
	public Seller selectLastSellerInfo();
}
