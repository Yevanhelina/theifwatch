package com.metroteam.theifwatch.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {
	@RequestMapping(value="/map",method = RequestMethod.GET)
	public ModelAndView getMap(@RequestParam(name="cellsize",required=false) Integer cellsize) {
		if (cellsize != null){
			ModelAndView m = new ModelAndView("map");
			m.getModelMap().addAttribute("cellsize", cellsize);
			return m;
		}else{
			ModelAndView m = new ModelAndView("pre");
			return m;
		}
	}
}
