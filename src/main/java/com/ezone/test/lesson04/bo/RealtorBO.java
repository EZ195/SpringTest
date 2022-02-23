package com.ezone.test.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.test.lesson04.dao.RealtorDAO;
import com.ezone.test.lesson04.model.Realtor;

@Service
public class RealtorBO {
	
	@Autowired
	private RealtorDAO realtorDAO;	
	
	public int addRealtorInfo (Realtor realtor) {
		return realtorDAO.addRealtorInfo(realtor);
	}

}
