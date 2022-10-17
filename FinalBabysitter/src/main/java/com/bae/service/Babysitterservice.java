package com.bae.service;

import org.springframework.stereotype.Service;

import com.bae.dao.Babysitterdao;
import com.bae.model.Babysitters;

@Service
public class Babysitterservice {

	Babysitterdao babysitterdao=new Babysitterdao();
	
	public Babysitters goto_bservice(Babysitters sitters) {
		babysitterdao.SaveBabysitter(sitters);
		return sitters;
		
	}
}
