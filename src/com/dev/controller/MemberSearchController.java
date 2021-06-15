package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.Service;
import com.dev.dto.DTO;

public class MemberSearchController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = (String)request.getSession().getAttribute("id");
		String sid = request.getParameter("sid");
		String uid = request.getParameter("uid");
		String did = request.getParameter("did");
		String job = request.getParameter("job");
		String path = null;
		
		if(job.equals("search")) {
			Service s = Service.getInstance();
			DTO member = s.memberSearch(sid);
			
			if(!id.equals(sid) && member != null) {
				request.setAttribute("msg", "아이디가 일치하지 않습니다!");
				path = "searchId.jsp";
			}else if(member == null) {
				request.setAttribute("result", "아이디가 존재하지 않습니다!");
				path = "searchId.jsp";
			}else {
				path = "/result/searchIdOutput.jsp";
			}
		}
		else if(job.equals("update")) {
			Service s = Service.getInstance();
			DTO member = s.memberSearch(uid);
			
			if(!id.equals(uid) && member != null) {
				request.setAttribute("msg", "아이디가 일치하지 않습니다!");
				path = "memberUpdate.jsp";
			}else if(member == null) {
				request.setAttribute("result", "아이디가 존재하지 않습니다!");
				path = "memberUpdate.jsp";
			}else {
				path = "memberUpdateProcess.jsp";
			}
		}
			
		else if(job.equals("delete")) {
			Service s = Service.getInstance();
			DTO member = s.memberSearch(did);
			
			if(!id.equals(did) && member != null) {
				request.setAttribute("msg", "아이디가 일치하지 않습니다!");
				path = "deleteId.jsp";
			}else if(member == null) {
				request.setAttribute("result", "아이디가 존재하지 않습니다!");
				path = "deleteId.jsp";
			}else {
				path = "deleteIdProcess.jsp";
			}
		}
		
		Service s = Service.getInstance();
		DTO member = s.memberSearch(id);
		
		//if(member == null) request.setAttribute("result", "아이디가 잘못되었습니다!");
		
		request.setAttribute("member", member);
		HttpUtil.forward(request, response, path);
	}
}
