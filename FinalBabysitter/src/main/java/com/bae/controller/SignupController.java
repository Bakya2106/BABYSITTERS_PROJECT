package com.bae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignupController {
	
	
	@RequestMapping(value="signup_as_cus",method=RequestMethod.GET)
	public String signup_customer() {
		
		return "Customer_signup";
	}
	
	@RequestMapping(value="signup_as_sitter",method=RequestMethod.GET)
	public String signup_sitter() {
		
		return "Babysitter_signup";
	}
	

}
