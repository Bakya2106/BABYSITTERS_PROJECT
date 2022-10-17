package com.bae.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.bae.model.Customer;

@Repository
public class Customerdao {
	

	
	private static Session buildSession() {
		try
        {
        	return new Configuration().configure().addAnnotatedClass(Customer.class).buildSessionFactory().openSession();
        }
        catch (Throwable ex) {
            
           System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex) ;
        }
		
	}
	
	private static Session session = buildSession();
	
//	public static void setSession(Session session) {
//		Customerdao.session = session;
//	}

	public static Session getSession() {
		return session;
	}


	public void SaveCustomer(Customer cust)  {
		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
		 SessionFactory sf=con.buildSessionFactory();
		 Session session=sf.openSession();
		 Transaction transaction = null;
        
        try{
        	
           transaction = session.beginTransaction();	           
            session.save(cust);
            session.getTransaction().commit();
            //session.close();
           // sf.close();
          
            
        } 
        catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
		
	}

}
