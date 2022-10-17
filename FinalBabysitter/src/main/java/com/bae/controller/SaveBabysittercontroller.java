package com.bae.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bae.model.Babysitters;
import com.bae.service.Babysitterservice;

@Controller
public class SaveBabysittercontroller {
	
	Babysitterservice bservice=new Babysitterservice();
	
	
	
	@RequestMapping(value="signup_babysitter", method=RequestMethod.GET)
	public String SaveBabysitters(@RequestParam (value="firstname",required=false) String first_name,
			@RequestParam (value="lastname",required=false) String last_name,
			@RequestParam (value="location",required=false) String loc_ation,
			@RequestParam (value="email",required=false) String email_id,
			@RequestParam (value="mobilenumber",required=false) String mobile_number,
			@RequestParam (value="password",required=false) String pass_word,
			@RequestParam (value="exp",required=false) int exp) {
		
		
		Babysitters sitter =new Babysitters();
				
		Random r= new Random();
		int max=10000;
		int min=0;
		int expr = 0;
		int babysitter_id=r. nextInt((max - min) + 1) + min;
		sitter.setBabysitter_id(babysitter_id);
		sitter.setFirst_name(first_name);
		sitter.setLast_name(last_name);
		sitter.setLocation(loc_ation);
		sitter.setEmail_id(email_id);
		sitter.setMobile_number(mobile_number);
		sitter.setPassword(pass_word);
		if(exp<=1) {
			expr=1;
		}
		if(exp==2) {
			expr=2;
		}
		if(exp==3) {
			expr=3;
		}
		if(exp==4) {
			expr=4;
		}
		if(exp>=5) {
			expr=5;
		}
		sitter.setRating(expr);
		
		bservice.goto_bservice(sitter);
		//Babysitterdao babysitterdao =new Babysitterdao();
		//babysitterdao.SaveBabysitter(sitter);
		
		
				return "Babysitterportal";
		
	}

}
