package com.ezone.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping("/1")
	public String test01() {
		return "lesson04/test01";   // jsp파일을 화면에 보여주는 역할 
	}
	
	
	//닉네임, 프로필 사진 url, 온도 전달 받고 DB에 저장
	@ResponseBody
	@PostMapping("/add_seller") // 해당 페이지를 post로 받을 때 postMapping 그 외에는 GetMapping
	public String addSeller(@RequestParam("nickname") String nickname, // @requestParam을 통해 데이터를 어떤 이름으로 받을 지 지정 
							@RequestParam("profileImageUrl") String profileImageUrl,
							@RequestParam("temperature") double temperature) {
		
		int count = sellerBO.addSellerInfo(nickname, profileImageUrl, temperature);
		return "입력 성공 : " + count;
	}
	
	@GetMapping("/seller_info")
	public String getSellerInfo(
			@RequestParam(value="id", required=false) Integer id, // Integer -> null도 저장하고 숫자도 저장 가능
			Model model) {
		
		// id라는 파라미터가 있으면 해당하는 정보 출력
		
		if(id != null) {
			
			Seller seller = sellerBO.getSeller(id);
			model.addAttribute("result", seller);
		
		}
		
		else {	// id라는 파라미터가 없으면 가장 최근 판매자 출력
			
			Seller seller = sellerBO.getLastSellerInfo();
			model.addAttribute("result", seller);

		}
			
		return "lesson04/test01_Info";
	}
	
		
	

}
