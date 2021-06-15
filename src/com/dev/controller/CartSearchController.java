package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.CartDTO;
import com.dev.service.CartService;

public class CartSearchController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		int prodnum = Integer.parseInt(request.getParameter("prodnum"));
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		CartService s = CartService.getInstance();
		CartDTO cart = s.cartSearch(id, prodnum);
		
		if(cart != null) {
			out.println("<script>alert('주문접수 되었습니다!'); location.href='myCartList.do';</script>");
			out.flush();
		}else {
			out.println("<script>alert('주문할 상품이 장바구니에 없습니다!'); location.href='myCartList.do';</script>");
			out.flush();
		}
	}
}
