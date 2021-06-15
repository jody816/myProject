package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.CartService;

public class CartDeleteController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		int prodnum = Integer.parseInt(request.getParameter("prodnum"));
		
		CartService s = CartService.getInstance();
		boolean result = s.cartDelete(id, prodnum);

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result)
		{
			out.println("<script>alert('목록이 삭제되었습니다!'); location.href='myCartList.do';</script>");
			out.flush();
		}
		else
		{
			out.println("<script>alert('취소할 상품이 없습니다!'); location.href='myCartList.jsp';</script>");
			out.flush();
		}
	}
}
