package com.bae.service;

import org.springframework.stereotype.Service;


import com.bae.dao.Customerdao;

import com.bae.model.Customer;

@Service
public class Customerservice {

Customerdao customerdao=new Customerdao();
	
	public Customer goto_cservice(Customer cus) {
		customerdao.SaveCustomer(cus);
		return cus;
		
	}
}
