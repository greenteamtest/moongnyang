package com.Community.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.community.community_MyBatisService;

public interface Community_Action {
	community_MyBatisService service = new community_MyBatisService();

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}