package com.dev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.CartDTO;
import com.dev.service.CartService;

public class MyCartListController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = (String)request.getSession().getAttribute("id");
		
		CartService service = CartService.getInstance();
		ArrayList<CartDTO> list = service.myCartList(id);
		
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/result/myCartList.jsp");
	}
}
