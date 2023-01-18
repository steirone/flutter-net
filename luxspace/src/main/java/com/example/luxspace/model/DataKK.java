package com.example.luxspace.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "data_kk")
public class DataKK {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(unique = true)
	private int nokk;
	
	private int nonik;
	
	private String nama;
	private String status;
	private String tempat_lahir;
	private String agama;
	private String kelamin;
	private String pekerjaan;
	private String goldar;
	private String alamat;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getNokk() {
		return nokk;
	}
	public void setNokk(int nokk) {
		this.nokk = nokk;
	}
	public int getNonik() {
		return nonik;
	}
	public void setNonik(int nonik) {
		this.nonik = nonik;
	}
	public String getNama() {
		return nama;
	}
	public void setNama(String nama) {
		this.nama = nama;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTempat_lahir() {
		return tempat_lahir;
	}
	public void setTempat_lahir(String tempat_lahir) {
		this.tempat_lahir = tempat_lahir;
	}
	public String getAgama() {
		return agama;
	}
	public void setAgama(String agama) {
		this.agama = agama;
	}
	public String getKelamin() {
		return kelamin;
	}
	public void setKelamin(String kelamin) {
		this.kelamin = kelamin;
	}
	public String getPekerjaan() {
		return pekerjaan;
	}
	public void setPekerjaan(String pekerjaan) {
		this.pekerjaan = pekerjaan;
	}
	public String getGoldar() {
		return goldar;
	}
	public void setGoldar(String goldar) {
		this.goldar = goldar;
	}
	public String getAlamat() {
		return alamat;
	}
	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

}
