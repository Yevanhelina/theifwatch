package com.metroteam.theifwatch.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class CommentServiceImpl implements CommentService {

	@Autowired
	private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public List<Comment> getAllCommentsByStation(int stationId) {
		return currentSession().createCriteria(Comment.class).add(Restrictions.eq("stationId", stationId)).list();
	}

	public void addComment(Comment comment) {
		currentSession().save(comment);
	}

}
