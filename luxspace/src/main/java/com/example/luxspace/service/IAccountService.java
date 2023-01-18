package com.example.luxspace.service;

import com.example.luxspace.model.Account;

public interface IAccountService {
	public Account insertAccount(Account account);
	public Account getAccount(String email,String password);
	public Account validateAccount(String email);
}
