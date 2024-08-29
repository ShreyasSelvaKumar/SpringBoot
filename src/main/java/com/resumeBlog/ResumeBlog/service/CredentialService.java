package com.resumeBlog.ResumeBlog.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resumeBlog.ResumeBlog.model.FresherResume;
import com.resumeBlog.ResumeBlog.model.LoginUser;
import com.resumeBlog.ResumeBlog.model.RegisterUser;
import com.resumeBlog.ResumeBlog.repositories.RegisterUserRepository;

@Service
public class CredentialService {

	@Autowired
	RegisterUserRepository registerUserRepository;
	
	public void addUser(RegisterUser registeruser) {
		registerUserRepository.save(registeruser);
	}
	
	public RegisterUser getUserbyemailandpassword(String email,String password) {
		return registerUserRepository.findByEmailAndPassword(email, password);
	}

	public boolean isUserPresent(LoginUser loginuser) {
		RegisterUser r=registerUserRepository.findByEmail(loginuser.getEmail());
		if(r!=null) {
			if(r.getPassword().equals(loginuser.getPassword())) {
				return true;
			}
		}
		return false;
	}
	

	public void updateRegisteredUser(RegisterUser ru) {
		registerUserRepository.save(ru);
		
		
	}

	public  FresherResume isResumePresent(String email) {
		RegisterUser r=registerUserRepository.findByEmail(email);
		if(r.getFresherResume()!=null) {
			return r.getFresherResume();
		}
		return null;
		
	}

	public boolean isUserRegistered(String email) {
		RegisterUser r=registerUserRepository.findByEmail(email);
		if(r!=null) {
			return true;
		}
		return false;
	}

}
