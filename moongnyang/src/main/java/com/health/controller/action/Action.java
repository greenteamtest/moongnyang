package com.health.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.health.Health_MyBatisService;

public interface Action {

	Health_MyBatisService service = new Health_MyBatisService();

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
