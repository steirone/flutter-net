package com.example.luxspace.service;

import java.util.List;

import com.example.luxspace.model.DataAnggota;

public interface IAnggotaService {
	public DataAnggota insertDataKK(DataAnggota datakk);
	public List<DataAnggota> getAllDataKK();
	public DataAnggota updateDataKK(int id, DataAnggota datakk);
	public DataAnggota deleteDataKK(int id);
	public DataAnggota validateDataKK(int nonik,int nokk);
	public List<DataAnggota> getAllDataAnggota(int nokk);
	public List<DataAnggota> deleteDataSemua(int nokk);
	public DataAnggota validateKepala(int nokk);
}