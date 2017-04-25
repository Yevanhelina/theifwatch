package com.metroteam.theifwatch.dao;

import java.util.List;

public interface CommentService {
	List<Comment> getAllCommentsByStation(int stationId);

	void addComment(Comment comment);
}
