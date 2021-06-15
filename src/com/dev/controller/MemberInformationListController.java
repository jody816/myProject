package com.dev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.Service;
import com.dev.dto.DTO;

public class MemberInformationListController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Service service = Service.getInstance();
		ArrayList<DTO> list = service.memberList();
		
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/result/memberInfoList.jsp");
	}
}
