package com.example.luxspace.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.luxspace.model.Student;
import com.example.luxspace.repository.IShippingRepository;
import com.example.luxspace.service.IShippingService;

@Service
public class ShippingService implements IShippingService{
	
	@Autowired
	IShippingRepository shippingRepository;

	@Override
	public Student insertStudent(Student student) {
		// TODO Auto-generated method stub
		return shippingRepository.insertStudent(student);
	}

	@Override
	public List<Student> getAllStudent() {
		// TODO Auto-generated method stub
		return shippingRepository.getAllStudent();
	}

	@Override
	public Student updateStudent(int id, Student student) {
		// TODO Auto-generated method stub
		return shippingRepository.updateStudent(id, student);
	}

	@Override
	public Student deleteStudent(int id) {
		// TODO Auto-generated method stub
		return shippingRepository.deleteStudent(id);
	}

	@Override
	public Student getStudent(int id) {
		// TODO Auto-generated method stub
		return shippingRepository.getStudent(id);
	}

}
