package com.metroteam.theifwatch.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class RandomAdviceServiceImpl implements RandomAdviceService {

	@Autowired
	private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}

	public RandomAdvice getRandomAdvice() {
		// TODO Auto-generated method stub
		return null;
	}
}
