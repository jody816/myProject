package com.dev.dto;

import java.sql.Timestamp;

public class OrderListDTO {
	private int ordernum;
	private String id;
	private int prodnum;
	private String prodname;
	private int quantity;
	private Timestamp orderdate;
	private String result;
	
	public int getOrdernum() {
		return ordernum;
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
	public Timestamp getOrderdate() {
		return orderdate;
	}
	public String getResult() {
		return result;
	}
	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
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
	public void setOrderdate(Timestamp orderdate) {
		this.orderdate = orderdate;
	}
	public void setResult(String result) {
		this.result = result;
	}
}
