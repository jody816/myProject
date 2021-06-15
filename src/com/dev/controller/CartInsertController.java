package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.CartDTO;

import com.dev.service.CartService;

public class CartInsertController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		int prodnum = Integer.parseInt(request.getParameter("prodnum"));
		String prodname = request.getParameter("prodname");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		CartDTO goods = new CartDTO();
		goods.setId(id);
		goods.setProdnum(prodnum);
		goods.setProdname(prodname);
		goods.setQuantity(quantity);
		
		CartService s = CartService.getInstance();
		s.cart(goods);
		
		HttpUtil.forward(request, response, "myPage.jsp");
	}
}
