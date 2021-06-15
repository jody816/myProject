package com.dev.service;

import java.util.ArrayList;

import com.dev.dao.DAO;
import com.dev.dto.CartDTO;

public class CartService {
	private static CartService service = new CartService();
	public DAO dao = DAO.getInstance();
	private CartService() {}
	
	public static CartService getInstance()
	{
		return service;
	}

	public void cart(CartDTO goods) {
		dao.cart(goods);
	}

	public ArrayList<CartDTO> myCartList(String id) {
		ArrayList<CartDTO> list = dao.myCartList(id);
		return list;
	}

	public boolean cartDelete(String id, int prodnum) {
		return dao.cartDelete(id, prodnum);
	}

	public CartDTO cartSearch(String id, int prodnum) {
		CartDTO cart = dao.cartSearch(id, prodnum);
		return cart;
	}

	public void cartModify(CartDTO cart) {
		dao.cartModify(cart);
	}
}
