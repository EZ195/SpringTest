package com.ezone.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezone.test.lesson04.bo.SellerBO;
import com.ezone.test.lesson04.model.Seller;

@Controller
@RequestMapping("/lesson04/test01")
public class SellerController {
	
	@Autowired
	private SellerBO sellerBO;
	
	@RequestMapping("/1")
	public String test01() {
		return "lesson04/test01";
	}
	
	@ResponseBody
	@RequestMapping("/add_seller")
	public String addSeller(@RequestParam("nickname") String nickname,
							@RequestParam("profileImageUrl") String profileImageUrl,
							@RequestParam("temperature") double temperature) {
		
		int count = sellerBO.addSellerInfo(nickname, profileImageUrl, temperature);
		return "입력 성공";
	}
	
	@RequestMapping("/seller_info")
	public String getSellerInfo(Model model) {
		
		Seller seller = sellerBO.getLastSellerInfo();
		
		model.addAttribute("result", seller);
		return "lesson04/test02";
	}


}
