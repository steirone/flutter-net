package com.example.luxspace.repository;

import java.util.List;

import com.example.luxspace.model.DataKK;

public interface IDatakkRepository {
	public DataKK insertDataKK(DataKK datakk);
	public List<DataKK> getAllDataKK();
	public DataKK updateDataKK(int id, DataKK datakk);
	public DataKK deleteDataKK(int id);
	public DataKK validateDataKK(int nokk);
	public List<DataKK> getAlamat();
}
