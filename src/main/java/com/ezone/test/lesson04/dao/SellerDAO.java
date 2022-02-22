package com.ezone.test.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezone.test.lesson04.model.Seller;

@Repository
public interface SellerDAO {
	public int addSellerInfo(
			@Param("nickname") String nickname,
			@Param("profileImageUrl") String profileImageUrl,
			@Param("temperature") double temperature);

	public Seller selectLastSellerInfo();				// id라는 파라미터가 없으면 가장 최근 판매자 출력
	public Seller selectSeller(@Param("id") int id);	// id라는 파라미터가 있으면 해당하는 정보 출력

}
