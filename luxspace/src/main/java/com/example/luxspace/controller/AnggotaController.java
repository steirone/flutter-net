package com.example.luxspace.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.luxspace.model.DataAnggota;
import com.example.luxspace.service.IAnggotaService;

@RestController
@CrossOrigin(origins = {"http://localhost:8080", "https://steirone.my.id/","http://localhost:35413"})
@RequestMapping("/api/anggota")
public class AnggotaController {
	
	@Autowired
	IAnggotaService AnggotaService;

	@PostMapping("/insert")
	public DataAnggota insertDataKK(@RequestBody DataAnggota datakk) {
		return AnggotaService.insertDataKK(datakk);
	}
	
	@GetMapping("/getAll")
	public List<DataAnggota> getAllDataKK(){
		return AnggotaService.getAllDataKK();
	}
	
	@PutMapping("/update/{id}")
	public DataAnggota updateDataKK(@PathVariable int id,@RequestBody DataAnggota datakk) {
		return AnggotaService.updateDataKK(id, datakk);
	}
	
	@DeleteMapping("/delete/{id}")
	public DataAnggota deleteDataKK(@PathVariable int id) {
		return AnggotaService.deleteDataKK(id);
	}
	
	@GetMapping("/valid/{nonik}/{nokk}")
	public DataAnggota validateDataKK(@PathVariable int nonik,@PathVariable int nokk) {
		return AnggotaService.validateDataKK(nonik,nokk);
	}
	
	@GetMapping("angot/{nokk}")
	public List<DataAnggota> getAllDataAnggota(@PathVariable int nokk){
		return AnggotaService.getAllDataAnggota(nokk);
	}
	
	@DeleteMapping("deleted/{nokk}")
	public List<DataAnggota> deleteDataSemua(@PathVariable int nokk){
		return AnggotaService.deleteDataSemua(nokk);
	}
	
	@GetMapping("validatekk/{nokk}")
	public DataAnggota validateKepala(@PathVariable int nokk) {
		return AnggotaService.validateKepala(nokk);
	}
}
