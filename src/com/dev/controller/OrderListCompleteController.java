package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.OrderListDTO;
import com.dev.service.OrderListService;

public class OrderListCompleteController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int ordernum = Integer.parseInt(request.getParameter("ordernum"));
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		OrderListService s = OrderListService.getInstance();
		OrderListDTO order = s.orderComplete(ordernum);
		
		if(order == null) {
			out.println("<script>alert('배송이 완료되었습니다!'); location.href='orderListAdmin.do';</script>");
			out.flush();
		}else {
			out.println("<script>alert('배송완료 할 주문이 없습니다!'); location.href='orderListAdmin.do';</script>");
			out.flush();
		}
	}
}
