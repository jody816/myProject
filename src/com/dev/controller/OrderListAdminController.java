package com.dev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.OrderListDTO;
import com.dev.service.OrderListService;

public class OrderListAdminController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		OrderListService service = OrderListService.getInstance();
		ArrayList<OrderListDTO> list = service.orderList();
		
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/result/orderListAdmin.jsp");
	}
}
