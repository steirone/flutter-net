package com.example.luxspace.repository.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.luxspace.model.DataAnggota;
import com.example.luxspace.repository.IAnggotaRepository;

@Repository
public class AnggotaRepository implements IAnggotaRepository{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public DataAnggota insertDataKK(DataAnggota datakk) {
		String query = "INSERT INTO data_anggota(nokk, nonik, nama, status, tempat_lahir, agama, kelamin, pekerjaan,goldar,alamat) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?,?,?)";
		jdbcTemplate.update(query, new Object[] {datakk.getNokk(), datakk.getNonik(),datakk.getNama(),datakk.getStatus(),datakk.getTempat_lahir(),datakk.getAgama(),datakk.getKelamin(),datakk.getPekerjaan(),datakk.getGoldar(),datakk.getAlamat() });
		return datakk;
	}

	@Override
	public List<DataAnggota> getAllDataKK() {
		String query = "SELECT * FROM data_anggota";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(DataAnggota.class));
	}

	@Override
	public DataAnggota updateDataKK(int id, DataAnggota datakk) {
		String query = "UPDATE data_anggota SET nokk = ?, nonik = ?, nama = ?, status = ?, "
				+ "tempat_lahir = ?, agama = ?, kelamin = ?, pekerjaan = ? , goldar = ?, alamat = ?,kepala_keluarga = ? WHERE id = ? ";
		jdbcTemplate.update(query, new Object[] {datakk.getNokk(),datakk.getNonik(),datakk.getNama(),datakk.getStatus(),datakk.getTempat_lahir(),datakk.getAgama(),datakk.getKelamin(),datakk.getPekerjaan(),datakk.getGoldar(),datakk.getAlamat(),datakk.getKepala_keluarga(), id });
		
		return datakk;
	}

	@Override
	public DataAnggota deleteDataKK(int id) {
		String query = "SELECT * FROM data_anggota WHERE id = ?";
		var result = jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (DataAnggota.class), id);
		
		query = "DELETE FROM data_anggota WHERE id = ? ";
		jdbcTemplate.update(query, id);
		
		return result;
	}

	@Override
	public DataAnggota validateDataKK(int nonik,int nokk) {
		String query = "SELECT * FROM data_anggota WHERE nonik = ? AND nokk = ?";
		return jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (DataAnggota.class), nonik,nokk);
	}

	@Override
	public List<DataAnggota> getAllDataAnggota(int nokk) {
		String query = "SELECT * FROM data_anggota WHERE nokk = ?";
		List<DataAnggota> result = jdbcTemplate.query(query, new BeanPropertyRowMapper<>(DataAnggota.class),nokk);
		return result;
	}

	@Override
	public List<DataAnggota> deleteDataSemua(int nokk) {
		String query = "SELECT * FROM data_anggota WHERE nokk = ?";
		var result = jdbcTemplate.query(query, new BeanPropertyRowMapper<> (DataAnggota.class), nokk);
		
		query = "DELETE FROM data_anggota WHERE id = ? ";
		jdbcTemplate.update(query, nokk);
		
		return result;
	}

	@Override
	public DataAnggota validateKepala(int nokk) {
		String query = "SELECT * FROM data_anggota WHERE nokk = ? AND kepala_keluarga = 'Yes'";
		return jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<> (DataAnggota.class), nokk);
	}

}
