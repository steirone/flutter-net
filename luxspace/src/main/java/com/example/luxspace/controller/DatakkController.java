package com.example.luxspace.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.luxspace.model.DataKK;
import com.example.luxspace.service.IDatakkService;

@RestController
@CrossOrigin(origins = {"http://localhost:8080", "https://steirone.my.id/"})
@RequestMapping("/api/datakk")
public class DatakkController {

	@Autowired
	IDatakkService datakkService;
	
	@PostMapping("/insert")
	public DataKK insertDataKK(@RequestBody DataKK datakk) {
		return datakkService.insertDataKK(datakk);
	}
	
	@GetMapping("/getAll")
	public List<DataKK> getAllDataKK(){
		return datakkService.getAllDataKK();
	}
	
	@PutMapping("/update/{id}")
	public DataKK updateDataKK(@PathVariable int id,@RequestBody DataKK datakk) {
		return datakkService.updateDataKK(id, datakk);
	}
	
	@DeleteMapping("/delete/{id}")
	public DataKK deleteDataKK(@PathVariable int id) {
		return datakkService.deleteDataKK(id);
	}
	
	@GetMapping("/valid/{nonik}")
	public DataKK validateDataKK(@PathVariable int nonik) {
		return datakkService.validateDataKK(nonik);
	}
	
	@GetMapping("/alamat/indo")
	public List<DataKK> getAlamat() {
		// TODO Auto-generated method stub
		return datakkService.getAlamat();
	}
}
