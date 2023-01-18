package com.example.luxspace.repository;

import com.example.luxspace.model.Account;

public interface IAccountRepository {
	public Account insertAccount(Account account);
	public Account getAccount(String email,String password);
	public Account validateAccount(String email);

}
