package com.bae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Indexcontroller {
	@RequestMapping(value="signin",method=RequestMethod.GET)
	public String signin() {
		
		return "Signin";
	}
	
	@RequestMapping(value="signup",method=RequestMethod.GET)
	public String signup() {
		
		return "Signup";
	}
	
	

}
