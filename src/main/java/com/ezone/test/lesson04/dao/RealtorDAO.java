package com.ezone.test.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.ezone.test.lesson04.model.Realtor;

@Repository
public interface RealtorDAO {
	public int addRealtorInfo(Realtor realtor);

}
