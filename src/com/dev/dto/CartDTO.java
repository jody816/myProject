package com.dev.dto;

public class CartDTO {
	private int cartnum;
	private String id;
	private int prodnum;
	private String prodname;
	private int quantity;
	
	public int getCartnum() {
		return cartnum;
	}
	public String getId() {
		return id;
	}
	public int getProdnum() {
		return prodnum;
	}
	public String getProdname() {
		return prodname;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setCartnum(int cartnum) {
		this.cartnum = cartnum;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
