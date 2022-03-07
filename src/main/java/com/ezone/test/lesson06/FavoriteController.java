package com.ezone.test.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezone.test.lesson06.bo.FavoriteBO;
import com.ezone.test.lesson06.model.Favorite;

@Controller
@RequestMapping("/lesson06")
public class FavoriteController {

	@Autowired FavoriteBO favoriteBo;
	
	@GetMapping("/favoriteList")
	public String getFavoriteList(Model model) {
		
		List<Favorite> favorite = favoriteBo.getFavoriteList();
		model.addAttribute("favorite", favorite);
		return "lesson06/favoriteList";
		
	}
	
	@GetMapping("/favoriteForm")
	public String favoriteForm() {
		
		return "lesson06/favoriteForm";
	}
	
	@PostMapping("/addFavorite")
	@ResponseBody
	public Map<String, String> addFavorite(@ModelAttribute Favorite favorite , Model model) {
		
		int count = favoriteBo.addFavorite(favorite);
		model.addAttribute("favorite", favorite);
		
		// <<json 형테>> 
		//성공
		// {"result":"success"} key value
		//실패
		// {"result":"fail"}
		
		
		Map<String, String> resultMap = new HashMap<>();
		if (count == 1) {
			resultMap.put("result","success");
			// return "success";
		}
		else {
			
			resultMap.put("result","fail");
			// return "fail";
		}
		
		return resultMap; // Map형식으로 만드는 방법!
		
	}
	
	@PostMapping("/duplicate")
	@ResponseBody
	public Map<String, Boolean> isDuplicate(@RequestParam("url") String url) {
		
		boolean is_duplicate = favoriteBo.isDuplicate(url);
		
		Map<String, Boolean> resultMap = new HashMap<>();
		resultMap.put("is_duplicate", is_duplicate);
		
		return resultMap;
		
	}
	
	@GetMapping("/deleteList")
	@ResponseBody
	public Map<String, String> deleteList(@RequestParam("id") int id){
		
		int count = favoriteBo.deleteList(id);
		
		Map<String,String> result = new HashMap<>();
		
		if (count ==1) {
			result.put("result", "success");
		}
		else {result.put("result", "fail");
		}
		
		return result;
	}

}
