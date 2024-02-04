package com.jspiders.smswithspringrest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jspiders.smswithspringrest.pojo.Admin;
import com.jspiders.smswithspringrest.response.AdminResponse;
import com.jspiders.smswithspringrest.service.AdminService;

@Controller
@ResponseBody
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@PostMapping(path = "/sign_up" , consumes = MediaType.APPLICATION_JSON_VALUE , produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<AdminResponse>addAdmin(@RequestBody Admin admin){
		Admin addAdmin = adminService.addAdmin(admin);
		AdminResponse adminResponse = new AdminResponse();
		adminResponse.setMessage("Admin added");
		adminResponse.setAdmin(addAdmin);
		adminResponse.setStatus(HttpStatus.CREATED.value());
		return new ResponseEntity<AdminResponse>(adminResponse,HttpStatus.CREATED) ;
		
	}
	
	@PostMapping (path = "/login" , consumes = MediaType.APPLICATION_JSON_VALUE , produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<AdminResponse> logIn(@RequestBody Admin admin) {
		Admin logIn = adminService.logIn(admin);
		AdminResponse adminResponse = new AdminResponse();
		
		if (logIn != null) {
			adminResponse.setMessage("LOG IN");
			adminResponse.setAdmin(logIn);
			adminResponse.setStatus(HttpStatus.FOUND.value());
			return new ResponseEntity<AdminResponse>(adminResponse,HttpStatus.FOUND);
		}else {
			adminResponse.setMessage("LOG IN FAILED");
			adminResponse.setAdmin(null);
			adminResponse.setStatus(HttpStatus.NOT_FOUND.value());
			return new ResponseEntity<AdminResponse>(adminResponse, HttpStatus.NOT_FOUND);
		}
	}
}
