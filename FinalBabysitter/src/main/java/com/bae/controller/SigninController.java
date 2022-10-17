package com.bae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SigninController {
	@RequestMapping(value="signin_as_cus",method=RequestMethod.GET)
	public String signin_customer() {
		
		return "Customer_login";
	}
	
	@RequestMapping(value="signin_as_sitter",method=RequestMethod.GET)
	public String signin_sitter() {
		
		return "Sitter_login";
	}
	
	
	

}
