package com.metroteam.theifwatch.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class QuizResponseServiceImpl implements QuizResponseService {

	@Autowired
	private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}

	public void addQuizResponse(QuizResponse quizResponse) {
		currentSession().save(quizResponse);
	}
}
