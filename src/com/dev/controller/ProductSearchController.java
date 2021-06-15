package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dto.ProductDTO;
import com.dev.service.ProductService;

public class ProductSearchController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int prodnum = Integer.parseInt(request.getParameter("prodnum"));
		String job = request.getParameter("job");
		String path = null;
		
		ProductService s = ProductService.getInstance();
		ProductDTO product = s.productSearch(prodnum);
		
		if(job.equals("i"))
			path = "ironMan/iron" + prodnum + ".jsp";
		else if(job.equals("s"))
			path = "spiderMan/sp" + (prodnum - 7) + ".jsp";
		else if(job.equals("c"))
			path = "captain/cap" + (prodnum - 11) + ".jsp";
		else if(job.equals("h"))
			path = "hulk/hulk" + (prodnum - 16) + ".jsp";
		else if(job.equals("b"))
			path = "blackPanther/bp" + (prodnum - 18) + ".jsp";
		else if(job.equals("t"))
			path = "thor/thor" + (prodnum - 25) + ".jsp";
		else if(job.equals("v"))
			path = "villain/v" + (prodnum - 28) + ".jsp";
		
		request.setAttribute("product", product);
		HttpUtil.forward(request, response, path);
	}
}
