package com.dev.service;

import com.dev.dao.DAO;
import com.dev.dto.TrailerDTO;

public class TrailerService {
	private static TrailerService service = new TrailerService();
	public DAO dao = DAO.getInstance();
	private TrailerService() {}
	public static TrailerService getInstance()
	{
		return service;
	}
	public TrailerDTO trailerSearch(int trailnum) {
		TrailerDTO trailer = dao.trailerSearch(trailnum);
		return trailer;
	}
}
