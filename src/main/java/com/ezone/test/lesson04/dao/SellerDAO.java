package com.ezone.test.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezone.test.lesson04.model.Seller;

@Repository
public interface SellerDAO {
	public Seller selectLastSellerInfo();
	public int addSellerInfo(@Param("nickname") String nickname,
								@Param("profileImageUrl") String profileImageUrl,
								@Param("temperature") double temperature);
}
