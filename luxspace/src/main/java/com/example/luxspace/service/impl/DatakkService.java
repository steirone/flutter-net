package com.example.luxspace.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.luxspace.model.DataKK;
import com.example.luxspace.repository.IDatakkRepository;
import com.example.luxspace.service.IDatakkService;

@Service
public class DatakkService implements IDatakkService{

	@Autowired
	IDatakkRepository DatakkRepoository;
	
	@Override
	public DataKK insertDataKK(DataKK datakk) {
		// TODO Auto-generated method stub
		return DatakkRepoository.insertDataKK(datakk);
	}

	@Override
	public List<DataKK> getAllDataKK() {
		// TODO Auto-generated method stub
		return DatakkRepoository.getAllDataKK();
	}

	@Override
	public DataKK updateDataKK(int id, DataKK datakk) {
		// TODO Auto-generated method stub
		return DatakkRepoository.updateDataKK(id, datakk);
	}

	@Override
	public DataKK deleteDataKK(int id) {
		// TODO Auto-generated method stub
		return DatakkRepoository.deleteDataKK(id);
	}

	@Override
	public DataKK validateDataKK(int nonik) {
		// TODO Auto-generated method stub
		return DatakkRepoository.validateDataKK(nonik);
	}

	@Override
	public List<DataKK> getAlamat() {
		// TODO Auto-generated method stub
		return DatakkRepoository.getAlamat();
	}

}
