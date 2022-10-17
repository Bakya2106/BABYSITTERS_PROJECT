package com.bae.controller;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bae.dao.Babysitterdao;
import com.bae.model.Babysitters;

@Controller
public class BabysitterportalController {
	
	@RequestMapping(value="babysitterportal",method=RequestMethod.GET)
	public String signin_as_babysitter(@RequestParam (value="email",required=false) String e_mail,
			@RequestParam (value="password",required=false) String pass_word,
			@RequestParam (value="id",required=false) int id) {
			String val= null;
			String valid=e_mail.concat(pass_word);
			Session session  = Babysitterdao.getSession();
			 Transaction transaction = null;
	        
	        try{
	        	
	           transaction = session.beginTransaction();	           
	           Babysitters sitter = new Babysitters();
	           sitter=session.get(Babysitters.class, id);
	           val =sitter.toString();
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
	        	
	        	return "Babysitterportal";
	       }
	       
	       else {
			return "Sitter_login"; 
	       }
		
		
	}
	

}
