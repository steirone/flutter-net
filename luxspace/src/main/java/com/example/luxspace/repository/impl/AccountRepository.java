package com.example.luxspace.repository.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.luxspace.model.Account;
import com.example.luxspace.repository.IAccountRepository;

@Repository
public class AccountRepository implements IAccountRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public Account insertAccount(Account account) {
		String query = "INSERT INTO data_login(name, email, username, password) "
				+ "VALUES(?, ?, ?, ?)";
		jdbcTemplate.update(query, new Object[] {account.getName(),account.getEmail(),account.getUsername(),account.getPassword() });
		return account;
	}

	@Override
	public Account getAccount(String email, String password) {
		String query = "SELECT * FROM data_login WHERE email = ? AND password = ?";
		return jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (Account.class), email,password);
	}

	@Override
	public Account validateAccount(String email) {
		String query = "SELECT * FROM data_login WHERE email = ?";
		return jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (Account.class), email);
	}
	
}
