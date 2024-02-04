package com.jspiders.smswithspringrest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.smswithspringrest.Repository.AdminRepository;
import com.jspiders.smswithspringrest.pojo.Admin;

@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	public Admin addAdmin(Admin admin) {
		return adminRepository.addAdmin(admin);
		
	}

	public Admin logIn(Admin admin) {
		List<Admin> allAdmin = adminRepository.getAllAdmin();
		Admin atbl = null;
		
		for(Admin a : allAdmin) {
			if (a.getEmail().equals(admin.getEmail()) && a.getPassword().equals(admin.getPassword())) {
				atbl = a;
			}
		}
		return atbl;
	}

}
