package com.dev.dto;

public class ProductDTO {
	private int prodnum;
	private String prodname;
	private int price;
	private String content;
	private String cha;
	private String category;
	public int getProdnum() {
		return prodnum;
	}
	public String getProdname() {
		return prodname;
	}
	public int getPrice() {
		return price;
	}
	public String getContent() {
		return content;
	}
	public String getCha() {
		return cha;
	}
	public String getCategory() {
		return category;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setCha(String cha) {
		this.cha = cha;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
