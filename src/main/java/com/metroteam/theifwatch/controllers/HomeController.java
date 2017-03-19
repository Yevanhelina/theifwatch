package com.metroteam.theifwatch.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	@RequestMapping(value="/",method = RequestMethod.GET)
	public String index () {
		return "index";
	}
	@RequestMapping(value="/aboutjson",method = RequestMethod.GET)
	public @ResponseBody Map aboutJson () {
		Map about = new HashMap<String, String>();
		about.put("teamname", "MetroTeam");
		about.put("projectName", "TheifWatch");
		about.put("Year", "2017");
		return about;
	}
	
}
