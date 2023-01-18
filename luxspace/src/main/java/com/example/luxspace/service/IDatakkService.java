package com.example.luxspace.service;

import java.util.List;

import com.example.luxspace.model.DataKK;

public interface IDatakkService {
	public DataKK insertDataKK(DataKK datakk);
	public List<DataKK> getAllDataKK();
	public DataKK updateDataKK(int id, DataKK datakk);
	public DataKK deleteDataKK(int id);
	public DataKK validateDataKK(int nonik);
	public List<DataKK> getAlamat();
}
