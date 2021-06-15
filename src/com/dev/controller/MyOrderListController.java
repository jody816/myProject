package com.dev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.OrderListDTO;
import com.dev.service.OrderListService;

public class MyOrderListController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = (String)request.getSession().getAttribute("id");
		
		OrderListService service = OrderListService.getInstance();
		ArrayList<OrderListDTO> list = service.myOrderList(id);
		
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/result/myOrderList.jsp");
	}
}
