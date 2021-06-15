package com.dev.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	HashMap<String, Controller> list = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		list = new HashMap<String, Controller>();
		list.put("/login.do", new LoginController());
		list.put("/join.do", new JoinController());
		list.put("/findId.do", new FindIdController());
		list.put("/findPwd.do", new FindPasswordController());
		list.put("/deleteId.do", new DeleteIdController());
		list.put("/memberInfo.do", new MemberInformationListController());
		list.put("/searchId.do", new MemberSearchController());
		list.put("/memberUpdate.do", new MemberUpdateController());
		list.put("/logout.do", new LogoutController());
		list.put("/cartInsert.do", new CartInsertController());
		list.put("/myCartList.do", new MyCartListController());
		list.put("/cartDelete.do", new CartDeleteController());
		list.put("/cartSearch.do", new CartSearchController());
		list.put("/myOrderList.do", new MyOrderListController());
		list.put("/orderListAdmin.do", new OrderListAdminController());
		list.put("/orderListComplete.do", new OrderListCompleteController());
		list.put("/productSearch.do", new ProductSearchController());
		list.put("/cartModify.do", new CartModifyController());
		list.put("/trailer.do", new TrailerSearchController());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String contextP = req.getContextPath();
		String url = req.getRequestURI();
		String path = url.substring(contextP.length());
		Controller subController = list.get(path);
		subController.execute(req, resp);
	}
}