package com.ezone.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezone.test.lesson04.bo.SellerBO;
import com.ezone.test.lesson04.model.Seller;

@Controller
@RequestMapping("/lesson04/test01")
public class SellerController {
	
	@Autowired
	private SellerBO sellerBO;
	
	@RequestMapping("/seller_info")
	public String getSellerInfo(Model model) {
		
		Seller seller = sellerBO.getLastSellerInfo();
		
		model.addAttribute("result", seller);
		return "lesson04/test02";
	}


}
