package com.Login.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Staff.Staff_MyBatisService;
import service.health.Health_MyBatisService;
import service.media.media_MyBatisService;
import service.picnic.Picnic_MyBatisService;

public interface Action {

	Staff_MyBatisService service = new Staff_MyBatisService();
	media_MyBatisService media_service = new media_MyBatisService();
	Picnic_MyBatisService picnic_service = new Picnic_MyBatisService();
	Health_MyBatisService health_service = new Health_MyBatisService();

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
