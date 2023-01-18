package com.example.luxspace.repository.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.luxspace.model.DataKK;
import com.example.luxspace.repository.IDatakkRepository;

@Repository
public class DatakkRepository implements IDatakkRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public DataKK insertDataKK(DataKK datakk) {
		String query = "INSERT INTO data_kk(nokk, nonik, nama, status, tempat_lahir, agama, kelamin, pekerjaan,goldar,alamat) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?,?,?)";
		jdbcTemplate.update(query, new Object[] {datakk.getNokk(), datakk.getNonik(),datakk.getNama(),datakk.getStatus(),datakk.getTempat_lahir(),datakk.getAgama(),datakk.getKelamin(),datakk.getPekerjaan(),datakk.getGoldar(),datakk.getAlamat() });
		return datakk;
	}

	@Override
	public List<DataKK> getAllDataKK() {
		String query = "SELECT * FROM data_kk";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(DataKK.class));
	}

	@Override
	public DataKK updateDataKK(int id, DataKK datakk) {
		String query = "UPDATE data_kk SET nokk = ?, nonik = ?, nama = ?, status = ?, "
				+ "tempat_lahir = ?, agama = ?, kelamin = ?, pekerjaan = ? , goldar = ?, alamat = ? WHERE id = ? ";
		jdbcTemplate.update(query, new Object[] {datakk.getNokk(),datakk.getNonik(),datakk.getNama(),datakk.getStatus(),datakk.getTempat_lahir(),datakk.getAgama(),datakk.getKelamin(),datakk.getPekerjaan(),datakk.getGoldar(),datakk.getAlamat(), id });
		
		return datakk;
	}

	@Override
	public DataKK deleteDataKK(int id) {
		String query = "SELECT * FROM data_kk WHERE id = ?";
		var result = jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (DataKK.class), id);
		
		query = "DELETE FROM data_kk WHERE id = ? ";
		jdbcTemplate.update(query, id);
		
		return result;
	}

	@Override
	public DataKK validateDataKK(int nokk) {
		String query = "SELECT * FROM data_kk WHERE nokk = ?";
		return jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (DataKK.class), nokk);
	}

	@Override
	public List<DataKK> getAlamat() {
		String query = "SELECT \r\n" + 
				"CONCAT(a.name,' - ',b.name,' - ',c.name,' - ',d.name) AS nama\r\n" + 
				"FROM villages a\r\n" + 
				"JOIN districts b\r\n" + 
				"ON a.district_id = b.id\r\n" + 
				"JOIN regencies c\r\n" + 
				"ON b.regency_id=c.id\r\n" + 
				"JOIN provinces d\r\n" + 
				"ON c.province_id=d.id\r\n" + 
				"ORDER BY a.id;";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(DataKK.class));
	}
	
}
