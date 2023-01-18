package com.example.luxspace.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.luxspace.model.Account;
import com.example.luxspace.service.IAccountService;

@RestController
@CrossOrigin(origins = {"http://localhost:8080", "https://steirone.my.id/"})
@RequestMapping("/api/account")
public class AccountController {
	
	@Autowired
	IAccountService AccountService;
	
	@PostMapping("/insert")
	public Account insertAccount(@RequestBody Account account) {
		return AccountService.insertAccount(account);
	}
	
	@PostMapping("/login")
	public Account getAccount(@RequestBody Account account) {
		return AccountService.getAccount(account.getEmail(), account.getPassword());
	}
	
	@GetMapping("/valid/{email}")
	public Account validateAccount(@PathVariable String email) {
		return AccountService.validateAccount(email);
	}
}
