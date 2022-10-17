package com.bae.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bae.model.Customer;
import com.bae.service.Babysitterservice;
import com.bae.service.Customerservice;

@Controller
public class SaveParentcontroller {
	
	Babysitterservice bservice=new Babysitterservice();
	Customerservice cservice=new Customerservice();
	
	@RequestMapping(value="signup_customer", method=RequestMethod.GET)
	public String Savecustomer(@RequestParam (value="firstname",required=false) String first_name,
			@RequestParam (value="lastname",required=false) String last_name,
			@RequestParam (value="location",required=false) String loc_ation,
			@RequestParam (value="email",required=false) String email_id,
			@RequestParam (value="mobilenumber",required=false) String mobile_number,
			@RequestParam (value="password",required=false) String pass_word) {
		
		Customer cust =new Customer();
		Random r= new Random();
		int max=10000;
		int min=0;
		int customer_id=r. nextInt((max - min) + 1) + min;
		cust.setCustomer_id(customer_id);
		cust.setFirst_name(first_name);
		cust.setLast_name(last_name);
		cust.setLocation(loc_ation);
		cust.setEmail_id(email_id);
		cust.setMobile_number(mobile_number);
		cust.setPassword(pass_word);
		
		//Customerdao customerdao = new Customerdao();
		//customerdao.SaveCustomer(cust);
		cservice.goto_cservice(cust);
		return "CustomerSingupSuccess";
		
	}
	
	@RequestMapping(value="redirect_to_signin", method=RequestMethod.GET)
	public String RedirectToSignin() {
		return "Customer_login";
		
	}
	
	

}
