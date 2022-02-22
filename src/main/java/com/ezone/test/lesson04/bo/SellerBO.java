package com.ezone.test.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.lesson04.dao.SellerDAO;
import com.ezone.test.lesson04.model.Seller;

@Service
public class SellerBO {
	
	@Autowired
	private SellerDAO sellerDAO;
	
	public int addSellerInfo(String nickname, String profileImageUrl, double temperature) {
		return sellerDAO.addSellerInfo(nickname, profileImageUrl, temperature);
	} //insert는 리턴타입이 입력된 행의 숫자 -> int
	
	public Seller getLastSellerInfo() {				// id라는 파라미터가 없으면 가장 최근 판매자 출력
		return sellerDAO.selectLastSellerInfo();				
	}
	
	public Seller getSeller(int id) {				// id라는 파라미터가 있으면 해당하는 정보 출력
		return sellerDAO.selectSeller(id);
	}

}
