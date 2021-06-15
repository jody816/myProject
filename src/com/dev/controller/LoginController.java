package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.dao.DAO;
import com.dev.service.Service;

public class LoginController implements Controller{
	String aId = "admin";
	String aPwd = "12345";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		DAO dao = new DAO();
		String name = dao.login(id, pwd);
		String path = null;
		String msg = null;
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();
		
		if(id.equals(aId) && pwd.equals(aPwd))
		{
			session.setAttribute("id", id);
			path = "/admin.jsp";
		}
		else if(id.isEmpty() || pwd.isEmpty())
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('아이디/비밀번호를 입력해주세요!');");
			out.println("location='login.jsp';");
			out.println("</script>");
		}
		else if(name != null)
		{
			session.setAttribute("id", id);
			path = "/main.jsp";
		}
		else
		{
			path = "login.jsp";
			msg = "no id";
		}
		request.setAttribute("msg", msg);
		HttpUtil.forward(request, response, path);
	}
}