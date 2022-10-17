package com.bae.controller;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bae.dao.Customerdao;
import com.bae.model.Customer;

@Controller
public class ParentportalController {
	@RequestMapping(value="customer_portal",method=RequestMethod.GET)
	public String signin_as_customer(
			@RequestParam (value="email",required=false) String e_mail,
			@RequestParam (value="password",required=false) String pass_word,
			@RequestParam (value="id",required=false) int id) {
		String val= null;
		String valid=e_mail.concat(pass_word);
		//Customerdao cdao=new Customerdao();
		Session session  = Customerdao.getSession();
		 Transaction transaction = null;
		 //System.out.println(valid);
       
       try{
       	
          transaction = session.beginTransaction();	           
          Customer cust = new Customer();
          cust=session.get(Customer.class, id);
          val =cust.toString();
          //System.out.println(val);
          session.getTransaction().commit();
          //session.close();
           
       } 
       catch (Exception e) {
           if (transaction != null) {
               transaction.rollback();
           }
           
           e.printStackTrace();
       }
       if (valid.matches(val)) {
    	   
    		return "Customerportal";
       }
       
       else {
		return "Customer_login"; 
       }
	}
	
	@RequestMapping(value="return_output",method=RequestMethod.GET)
	public String return_sitter() {
		
		return "Customerportal2";
	}
	

}
