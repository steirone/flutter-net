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

import com.example.luxspace.model.Student;
import com.example.luxspace.service.IShippingService;

@RestController
@CrossOrigin(origins = "http://localhost:8080")
@RequestMapping("/api/student")
public class ShippingController {
	@Autowired
	IShippingService shippingService;
	
	@PostMapping("/insert")
	public Student insertStudent(@RequestBody Student student) {
		return shippingService.insertStudent(student);
	}
	
	@GetMapping("/getAll")
	public List<Student> getAllStudent(){
		return shippingService.getAllStudent();
	}
	
	@PutMapping("/update/{id}")
	public Student updateStudent(@PathVariable int id,@RequestBody Student student) {
		return shippingService.updateStudent(id, student);
	}
	
	@DeleteMapping("/delete/{id}")
	public Student deleteStudent(@PathVariable int id) {
		return shippingService.deleteStudent(id);
	}
	
	@GetMapping("/getStudent/{id}")
	public Student getStudent(@PathVariable int id) {
		return shippingService.getStudent(id);
	}
}
