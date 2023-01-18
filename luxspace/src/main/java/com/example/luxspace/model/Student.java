package com.example.luxspace.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "data_mahasiswa")
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String student_name;
	private Integer student_age;
	private String student_email;
	private String gender;
	private String soft_skill;
	private String hard_skill;
	private String interest;
	private String self_description;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public Integer getStudent_age() {
		return student_age;
	}
	public void setStudent_age(Integer student_age) {
		this.student_age = student_age;
	}
	public String getStudent_email() {
		return student_email;
	}
	public void setStudent_email(String student_email) {
		this.student_email = student_email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSoft_skill() {
		return soft_skill;
	}
	public void setSoft_skill(String soft_skill) {
		this.soft_skill = soft_skill;
	}
	public String getHard_skill() {
		return hard_skill;
	}
	public void setHard_skill(String hard_skill) {
		this.hard_skill = hard_skill;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getSelf_description() {
		return self_description;
	}
	public void setSelf_description(String self_description) {
		this.self_description = self_description;
	}
	
}
	
	
