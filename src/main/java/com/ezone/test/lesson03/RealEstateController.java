package com.ezone.test.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezone.test.lesson03.bo.RealEstateBO;
import com.ezone.test.lesson03.model.RealEstate;

@Controller
@RequestMapping("/lesson03")
public class RealEstateController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	@ResponseBody
	@RequestMapping("/test01/1")
	public RealEstate realEstate(
			@RequestParam(value="id" , defaultValue="1") int id) {		
		
		return realEstateBO.getRealEstate(id);
	
	}
	
	@ResponseBody
	@RequestMapping("/test01/2")
	public List<RealEstate> realEstateByRentPrice(@RequestParam("rent") int realPrice) {
		
		return realEstateBO.getRealEstateByRentPrice(realPrice);
	}
	
	@ResponseBody
	@RequestMapping("/test01/3")
	public List<RealEstate> realEstateByAreaPrice(@RequestParam("area") int area, 
												@RequestParam("price") int price) {
		return realEstateBO.getRealEstateByAreaPrice(area, price);
	}
	
	@ResponseBody
	@RequestMapping("/test02/1")
	public String ex01() {
		
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("메메");
		realEstate.setPrice(100000);
		
		int count = realEstateBO.addRealEstate(realEstate);
		return "삽입결과 : " + count;
	}
	
	@ResponseBody
	@RequestMapping("/test02/2")
	public String ex02(@RequestParam("realtorId") int realtorId) {
		int countField = realEstateBO.addRealEstateByField(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		return "삽입결과 : " + countField;		
	}
	
	@ResponseBody
	@RequestMapping("/test03")
	public String updateRealEstate() {
		int count = realEstateBO.updateRealEstate(21, "전세", 7000);
		return "수정 성공 : " + count;
	}
	
	@ResponseBody
	@RequestMapping("/test04")
	public String deleteRealEstate(@RequestParam("id") int id) {
		int count = realEstateBO.deleteRealEstate(id);
		
		return "삭제 성공 : " + count; 
	}
	
	
	
	

}
