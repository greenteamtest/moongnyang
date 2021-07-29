package com.picnic.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.picnic.Picnic_MyBatisService;

public interface Action {
		
	Picnic_MyBatisService service = new Picnic_MyBatisService();
	
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException;
	
}
