package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dao.DAO;

public class FindIdController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		DAO dao = new DAO();
		String id = dao.findId(name, email);
		response.setContentType("text/html;charset=UTF-8");
		request.setAttribute("id", id);
		PrintWriter out = response.getWriter();
		
		if(id == null) {
			out.println("<script>alert('아이디가 존재하지 않습니다!'); location.href='findId.jsp';</script>");
			out.flush();
		}
		HttpUtil.forward(request, response, "/result/findIdOutput.jsp");
	}
}
