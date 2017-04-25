package com.metroteam.theifwatch.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.metroteam.theifwatch.dao.Comment;
import com.metroteam.theifwatch.dao.RandomAdvice;
import com.metroteam.theifwatch.dao.RandomAdviceService;
import com.metroteam.theifwatch.dao.UserService;

@Controller
public class AdviceController {
	@Autowired
	private RandomAdviceService randomAdviceService;

	@RequestMapping(value="/random",method = RequestMethod.GET)
	public @ResponseBody RandomAdvice getAdvice(){
		return randomAdviceService.getRandomAdvice();
	}
}
