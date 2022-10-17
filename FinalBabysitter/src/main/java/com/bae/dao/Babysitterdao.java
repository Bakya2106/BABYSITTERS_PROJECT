package com.bae.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.bae.model.Babysitters;


@Repository
public class Babysitterdao {
	

	
	
	private static Session buildSession() {
		try
        {
        	return new Configuration().configure().addAnnotatedClass(Babysitters.class).buildSessionFactory().openSession();
        }
        catch (Throwable ex) {
            
           System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex) ;
        }
		
	}
	
	private static Session session = buildSession();
	
	public static Session getSession() {
		return session;
	}


	public void SaveBabysitter(Babysitters sitters) {
		Configuration con=new Configuration().configure().addAnnotatedClass(Babysitters.class);
		 SessionFactory sf=con.buildSessionFactory();
		 Session session=sf.openSession();
		 Transaction transaction = null;
        
        try{
        	
           transaction = session.beginTransaction();	           
            session.save(sitters);
            session.getTransaction().commit();
            //session.close();
            //sf.close();
           
            
        } 
        catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
		
	}

}
