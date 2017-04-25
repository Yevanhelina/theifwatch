package com.metroteam.theifwatch.controllers;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.metroteam.theifwatch.auth.Authority;
import com.metroteam.theifwatch.dao.User;
import com.metroteam.theifwatch.dao.UserService;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value="/users",method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute User user){
		ModelAndView  modelAndView = new ModelAndView();
		try{
			userService.getUserByName(user.getUsername());
			System.out.println("Username already exists!");
			modelAndView.getModel().put("message", "Username already exists!");
			modelAndView.setViewName("signup");
		}catch(UsernameNotFoundException e){
			if (Objects.equals(user.getPassword(), user.getPasswordConfirm())){
				System.out.println("Passwords matches!");
				userService.addUser(user);
				modelAndView.setViewName("redirect:/login");
			}else{
				System.out.println("Passwords does not match!");
				modelAndView.getModel().put("message", "Passwords does not match!");
				modelAndView.setViewName("signup");
			}
		}
		return modelAndView;
	}
	@RequestMapping(value="/signup",method = RequestMethod.GET)
	public String signUp(){
		return "signup";
	}
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String logIn(){
		return "login";
	}
	@RequestMapping(value="/forbidden")
	public String accessDenied(){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth.getAuthorities().contains(new Authority("ROLE_ANONYMOUS"))){
			return "redirect:/login";
		}else{
			return "redirect:/";
		}
	}
}
