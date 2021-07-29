package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Login.Staff_MyBatisService;

public interface Action {

	Staff_MyBatisService service = new Staff_MyBatisService();

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
