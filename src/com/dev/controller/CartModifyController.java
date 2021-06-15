package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.CartDTO;
import com.dev.service.CartService;

public class CartModifyController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		int prodnum = Integer.parseInt(request.getParameter("prodnum"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		CartDTO cart = new CartDTO();
		cart.setId(id);
		cart.setProdnum(prodnum);
		cart.setQuantity(quantity);
		
		CartService s = CartService.getInstance();
		s.cartModify(cart);
		
		if(cart != null) {
			out.println("<script>alert('수량이 변경되었습니다!'); location.href='myCartList.do';</script>");
			out.flush();
		}
	}
}
