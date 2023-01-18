package com.example.luxspace.repository;

import java.util.List;

import com.example.luxspace.model.Student;

public interface IShippingRepository {
	public Student insertStudent(Student student);
	public List<Student> getAllStudent();
	public Student updateStudent(int id, Student student);
	public Student deleteStudent(int id);
	public Student getStudent(int id);
}
