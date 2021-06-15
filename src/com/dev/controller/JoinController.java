package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.service.Service;
import com.dev.dao.DAO;
import com.dev.dto.DTO;

public class JoinController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		DTO member = new DTO();
		member.setId(id);
		member.setPwd(pwd);
		member.setName(name);
		member.setEmail(email);
		member.setPhone(phone);
		member.setAddress(address);
		
		DAO dao = new DAO();
		boolean result = dao.join(member);
		
		//service
		//Service service = Service.getInstance();
		//service.join(member);
		
		response.setContentType("text/html; charset=UTF-8");
		//String msg = null;
		PrintWriter out = response.getWriter();
		
		if(result == false) {
			out.println("<script>alert('이미 존재하는 아이디입니다!'); location.href='join.jsp';</script>");
			out.flush();
		}else {
			out.println("<script>alert('회원가입에 성공하셨습니다!'); location.href='login.jsp';</script>");
			out.flush();
		}
		//out.println("<script>alert('X'); location.href='join.jsp';</script>");
		//out.flush();
		
		request.setAttribute("id", id);
		//HttpUtil.forward(request, response, "login.jsp");
	}
}
