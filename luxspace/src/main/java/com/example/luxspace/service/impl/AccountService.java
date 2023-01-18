package com.example.luxspace.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.luxspace.model.Account;
import com.example.luxspace.service.IAccountService;
import com.example.luxspace.repository.IAccountRepository;

@Service
public class AccountService implements IAccountService{
	
	@Autowired
	IAccountRepository AccountRepository;

	@Override
	public Account insertAccount(Account account) {
		// TODO Auto-generated method stub
		return AccountRepository.insertAccount(account);
	}

	@Override
	public Account getAccount(String email, String password) {
		// TODO Auto-generated method stub
		return AccountRepository.getAccount(email, password);
	}

	@Override
	public Account validateAccount(String email) {
		// TODO Auto-generated method stub
		return AccountRepository.validateAccount(email);
	}
	

}
