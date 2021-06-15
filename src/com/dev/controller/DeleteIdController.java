package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.controller.HttpUtil;
import com.dev.service.Service;

public class DeleteIdController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		
		Service s = Service.getInstance();
		boolean result = s.deleteId(id, pwd, name);

		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		if(result)
		{
			
			session.invalidate();
			out.println("<script>alert('회원 탈퇴되었습니다!'); location.href='login.jsp';</script>");
			out.flush();
		}
		else
		{
			
			out.println("<script>alert('입력하신 정보가 잘못되었습니다!'); location.href='deleteId.jsp';</script>");
			out.flush();
		}
		//HttpUtil.forward(request, response, path);
	}
}
