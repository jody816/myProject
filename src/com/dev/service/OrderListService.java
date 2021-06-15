package com.dev.service;

import java.util.ArrayList;

import com.dev.dao.DAO;
import com.dev.dto.OrderListDTO;

public class OrderListService {
	private static OrderListService service = new OrderListService();
	public DAO dao = DAO.getInstance();
	private OrderListService() {}
	public static OrderListService getInstance()
	{
		return service;
	}
	public ArrayList<OrderListDTO> myOrderList(String id) {
		ArrayList<OrderListDTO> list = dao.myOrderList(id);
		return list;
	}
	public ArrayList<OrderListDTO> orderList() {
		ArrayList<OrderListDTO> list = dao.orderList();
		return list;
	}
	public OrderListDTO orderComplete(int ordernum) {
		OrderListDTO order = dao.orderComplete(ordernum);
		return order;
	}
	
}
