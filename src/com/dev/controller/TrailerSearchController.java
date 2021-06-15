package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.TrailerDTO;
import com.dev.service.TrailerService;

public class TrailerSearchController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int trailnum = Integer.parseInt(request.getParameter("trailnum"));
		
		TrailerService s = TrailerService.getInstance();
		TrailerDTO trailer = s.trailerSearch(trailnum);
		
		request.setAttribute("trailer", trailer);
		HttpUtil.forward(request, response, "trailer" + trailnum + ".jsp");
	}
}
