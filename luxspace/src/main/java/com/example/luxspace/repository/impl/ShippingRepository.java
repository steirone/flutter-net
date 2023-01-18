package com.example.luxspace.repository.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.luxspace.model.Student;
import com.example.luxspace.repository.IShippingRepository;

@Repository
public class ShippingRepository implements IShippingRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public Student insertStudent(Student student) {
		String query = "INSERT INTO data_mahasiswa(student_name, student_age, student_email, gender, soft_skill, hard_skill, interest, self_description) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(query, new Object[] {student.getStudent_name(), student.getStudent_age(), student.getStudent_email(),
				student.getGender(), student.getSoft_skill(), student.getHard_skill(), student.getInterest(), student.getSelf_description() });
		return student;
	}

	@Override
	public List<Student> getAllStudent() {
		String query = "SELECT * FROM data_mahasiswa";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(Student.class));
	}

	@Override
	public Student updateStudent(int id, Student student) {
		// TODO Auto-generated method stub
		String query = "UPDATE data_mahasiswa SET student_name = ?, soft_skill = ?, student_age = ?, gender = ?, "
				+ "hard_skill = ?, student_email = ?, interest = ?, self_description = ? WHERE id = ? ";
		jdbcTemplate.update(query, new Object[] {student.getStudent_name(), student.getSoft_skill(), student.getStudent_age(),
				student.getGender(), student.getHard_skill(), student.getStudent_email(), student.getInterest(), student.getSelf_description(), id });
		
		return student;
	}

	@Override
	public Student deleteStudent(int id) {
		// TODO Auto-generated method stub
		String query = "SELECT * FROM data_mahasiswa WHERE id = ?";
		var result = jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (Student.class), id);
		
		query = "DELETE FROM data_mahasiswa WHERE id = ? ";
		jdbcTemplate.update(query, id);
		
		return result;
	}

	@Override
	public Student getStudent(int id) {
		// TODO Auto-generated method stub
		String query = "SELECT * FROM data_mahasiswa WHERE id = ?";
		return jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<>(Student.class), id);

	}

}
