package com.dev.service;

import com.dev.dao.DAO;
import com.dev.dto.ProductDTO;

public class ProductService {
	private static ProductService service = new ProductService();
	public DAO dao = DAO.getInstance();
	private ProductService() {}
	public static ProductService getInstance()
	{
		return service;
	}
	public ProductDTO productSearch(int prodnum) {
		ProductDTO product = dao.productSearch(prodnum);
		return product;
	}
}
