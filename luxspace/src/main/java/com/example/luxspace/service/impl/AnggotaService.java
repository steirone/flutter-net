package com.example.luxspace.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.luxspace.model.DataAnggota;
import com.example.luxspace.repository.IAnggotaRepository;
import com.example.luxspace.service.IAnggotaService;

@Service
public class AnggotaService implements IAnggotaService{
	
	@Autowired
	IAnggotaRepository AnggotaRepoository;

	@Override
	public DataAnggota insertDataKK(DataAnggota datakk) {
		// TODO Auto-generated method stub
		return AnggotaRepoository.insertDataKK(datakk);
	}

	@Override
	public List<DataAnggota> getAllDataKK() {
		// TODO Auto-generated method stub
		return AnggotaRepoository.getAllDataKK();
	}

	@Override
	public DataAnggota updateDataKK(int id, DataAnggota datakk) {
		// TODO Auto-generated method stub
		return AnggotaRepoository.updateDataKK(id, datakk);
	}

	@Override
	public DataAnggota deleteDataKK(int id) {
		// TODO Auto-generated method stub
		return AnggotaRepoository.deleteDataKK(id);
	}

	@Override
	public DataAnggota validateDataKK(int nonik,int nokk) {
		// TODO Auto-generated method stub
		return AnggotaRepoository.validateDataKK(nonik,nokk);
	}

	@Override
	public List<DataAnggota> getAllDataAnggota(int nokk) {
		// TODO Auto-generated method stub
		return AnggotaRepoository.getAllDataAnggota(nokk);
	}

	@Override
	public List<DataAnggota> deleteDataSemua(int nokk) {
		// TODO Auto-generated method stub
		return AnggotaRepoository.deleteDataSemua(nokk);
	}

	@Override
	public DataAnggota validateKepala(int nokk) {
		// TODO Auto-generated method stub
		return AnggotaRepoository.validateKepala(nokk);
	}

}
