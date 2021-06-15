package com.dev.service;

import java.util.ArrayList;

import com.dev.dao.DAO;
import com.dev.dto.DTO;

public class Service {
	private static Service service = new Service();
	public DAO dao = DAO.getInstance();
	private Service() {}
	
	public static Service getInstance()
	{
		return service;
	}

	public boolean join(DTO member) {
		return dao.join(member);
	}

	public boolean deleteId(String id, String pwd, String name) {
		return dao.deleteId(id, pwd, name);
	}

	public ArrayList<DTO> memberList() {
		ArrayList<DTO> list = dao.memberList();
		return list;
	}

	public DTO memberSearch(String id) {
		DTO member = dao.memberSearch(id);
		
		return member;
	}

	public void memberUpdate(DTO member) {
		dao.memberUpdate(member);
	}
}
