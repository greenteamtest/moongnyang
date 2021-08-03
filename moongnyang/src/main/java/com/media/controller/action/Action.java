package com.media.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.media.media_MyBatisService;

public interface Action {

	media_MyBatisService service = new media_MyBatisService();

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
