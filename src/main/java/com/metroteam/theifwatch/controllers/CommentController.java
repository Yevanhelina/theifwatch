package com.metroteam.theifwatch.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.metroteam.theifwatch.dao.Comment;
import com.metroteam.theifwatch.dao.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;

	@RequestMapping(value="/comments/{stationId}",method = RequestMethod.GET)
	public @ResponseBody List<Comment> getComments(@PathVariable("stationId") int stationId){
		return commentService.getAllCommentsByStation(stationId);
	}

	@RequestMapping(value="/comments",method = RequestMethod.POST)
	public void addComment(@ModelAttribute Comment comment){
		commentService.addComment(comment);
	}
}
