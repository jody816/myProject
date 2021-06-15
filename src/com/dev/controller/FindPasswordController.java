package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dao.DAO;

public class FindPasswordController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		DAO dao = new DAO();
		String pwd = dao.findPwd(id ,name, email);
		response.setContentType("text/html;charset=UTF-8");
		request.setAttribute("pwd", pwd);
		PrintWriter out = response.getWriter();
		
		if(pwd == null) {
			out.println("<script>alert('입력하신 정보가 잘못되었습니다!'); location.href='findPwd.jsp';</script>");
			out.flush();
		}
		HttpUtil.forward(request, response, "/result/findPwdOutput.jsp");
	}
}
