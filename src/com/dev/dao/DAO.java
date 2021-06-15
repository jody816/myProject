package com.dev.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.security.Timestamp;

import com.dev.dto.CartDTO;
import com.dev.dto.DTO;
import com.dev.dto.OrderListDTO;
import com.dev.dto.ProductDTO;
import com.dev.dto.TrailerDTO;

public class DAO {
	private static DAO dao = new DAO();
	public DAO() {}
	public static DAO getInstance() {
		return dao;
	}
	public Connection connect()
	{
		Connection conn = null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "2307");
		}catch(Exception e){
			System.out.println("MDAO : connect" + e);
		}
		return conn;
	}
	public void close(Connection conn, PreparedStatement pstmt)
	{
		if(pstmt != null)
		{
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.println("Pstmt close error"+e);
			}
		}
		if(conn != null)
		{
			try {
				conn.close();
			}catch(Exception e)
			{
				System.out.println("Conn close error"+e);
			}
		}
	}
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs)
	{
		if(rs != null)
		{
			try {
				rs.close();
			}catch(Exception e) {
				System.out.println("rs close error" + e);
			}
		}
		close(conn, pstmt);
	}
	public String login(String id, String pwd) {
		String name = null;
		Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    try {
	    	conn = connect();
	    	pstmt = conn.prepareStatement("select * from member where id = ? and pwd = ?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				name = rs.getString("name");
			}
			}catch(Exception e) {
				System.out.println("DAO : login error" + e);
			}finally {
				close(conn, pstmt, rs);
			}
	    	return name;
	    }
	public boolean join(DTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int succ = 0;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?);");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getAddress());
			succ = pstmt.executeUpdate();
			
			if(succ != 0) {
				return true;
			}
		}catch(Exception e)
		{
			System.out.println("DAO : join error" + e);
		}finally {
			close(conn, pstmt);
		}
		return false;
	}
	public int confirmID(DTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;

		String sql = "select pwd from member where id=?;";

		try {
			conn = connect(); // DB 연결 시도
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());

			rs = pstmt.executeQuery();

			if (rs.next()) { // 조회 결과가 있으면 id가 존재한다는 의미
				result = 1;
			} else {
				// 조회한 결과가 값이 없으므로 id가 존재하지 않음.
				result = -1;
			}

		} catch(Exception e)
		{
			System.out.println("DAO : confirm error" + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return result;
	}
	public String findId(String name, String email) {
		String id = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from member where name = ? and email = ?;";
		try {
			conn = connect(); // DB 연결 시도
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);

			rs = pstmt.executeQuery();
			
			if(rs.next())
				id = rs.getString("member.id");
		}catch(Exception e)
		{
			System.out.println("DAO : findId error" + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return id;
	}
	public String findPwd(String id, String name, String email) {
		String pwd = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select pwd from member where id = ? and name = ? and email = ?;";
		try {
			conn = connect(); // DB 연결 시도
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, email);

			rs = pstmt.executeQuery();
			
			if(rs.next())
				pwd = rs.getString("member.pwd");
		}catch(Exception e)
		{
			System.out.println("DAO : findPwd error" + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return pwd;
	}
	public boolean deleteId(String id, String pwd, String name) {
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("delete from member where id = ? and pwd = ? and name = ?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			int re = pstmt.executeUpdate();
			pstmt = conn.prepareStatement("delete from cart where id = ?;");
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			if(re>0) result = true;
		}catch(Exception e)
		{
			System.out.println("DAO : deleteId error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return result;
	}
	public ArrayList<DTO> memberList() {
		ArrayList<DTO> list = new ArrayList<DTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		DTO member = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from member;");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				member = new DTO();
				member.setId(rs.getString(1));
				member.setPwd(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setPhone(rs.getString(5));
				member.setAddress(rs.getString(6));
				list.add(member);
			}
		}catch(Exception e)
		{
			System.out.println("DAO : memberInfoList error" + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return list;
	}
	public DTO memberSearch(String sid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DTO member = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from member where id = ?;");
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				member = new DTO();
				member.setId(rs.getString(1));
				member.setPwd(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setPhone(rs.getString(5));
				member.setAddress(rs.getString(6));
			}
		}catch(Exception e) {
			System.out.println("DAO : memberSearch error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return member;
	}
	public void memberUpdate(DTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("update member set pwd=?, name=?, email=?, phone=?, address=? where id=?;");
			pstmt.setString(6, member.getId());
			pstmt.setString(1, member.getPwd());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getPhone());
			pstmt.setString(5, member.getAddress());
			pstmt.executeUpdate();
		}catch(Exception e)
		{
			System.out.println("DAO : updateId error" + e);
		}finally {
			close(conn, pstmt);
		}
	}
	public void cart(CartDTO goods) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("insert into cart(id, prodnum, prodname, quantity) values(?,?,?,?);");
			pstmt.setString(1, goods.getId());
			pstmt.setInt(2, goods.getProdnum());
			pstmt.setString(3, goods.getProdname());
			pstmt.setInt(4, goods.getQuantity());
			pstmt.executeUpdate();
		}catch(Exception e)
		{
			System.out.println("DAO : cartInsert error" + e);
		}finally {
			close(conn, pstmt);
		}
	}
	public ArrayList<CartDTO> myCartList(String id) {
		ArrayList<CartDTO> list = new ArrayList<CartDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		CartDTO cart = null;
		try 
		{
			conn = connect();
			pstmt = conn.prepareStatement("select prodnum, prodname, quantity from cart where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				
				cart = new CartDTO();
				cart.setProdnum(rs.getInt(1));
				cart.setProdname(rs.getString(2));
				cart.setQuantity(rs.getInt(3));
				list.add(cart);
			}
		}catch(Exception e) {
			System.out.println("DAO : myCartList error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return list;
	}
	public boolean cartDelete(String id, int prodnum) {
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("delete from cart where id = ? and prodnum = ?;");
			pstmt.setString(1, id);
			pstmt.setInt(2, prodnum);
			int re = pstmt.executeUpdate();
			if(re>0) result = true;
		}catch(Exception e)
		{
			System.out.println("DAO : cartDelete error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return result;
	}
	public CartDTO cartSearch(String id, int prodnum) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CartDTO cart = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select id, prodnum, prodname, quantity from cart where id = ? and prodnum = ?;");
			pstmt.setString(1, id);
			pstmt.setInt(2, prodnum);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				cart = new CartDTO();
				cart.setId(rs.getString(1));
				cart.setProdnum(rs.getInt(2));
				cart.setProdname(rs.getString(3));
				cart.setQuantity(rs.getInt(4));
			}
			pstmt = conn.prepareStatement("insert into orderlist(id, prodnum, prodname, quantity) values(?,?,?,?);");
			pstmt.setString(1, cart.getId());
			pstmt.setInt(2, cart.getProdnum());
			pstmt.setString(3, cart.getProdname());
			pstmt.setInt(4, cart.getQuantity());
			pstmt.executeUpdate();
			
			pstmt = conn.prepareStatement("delete from cart where id = ? and prodnum = ?;");
			pstmt.setString(1, id);
			pstmt.setInt(2, prodnum);
			int re = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("DAO : cartSearch error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return cart;
	}
	public ArrayList<OrderListDTO> myOrderList(String id) {
		ArrayList<OrderListDTO> list = new ArrayList<OrderListDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		OrderListDTO order = null;
		try 
		{
			conn = connect();
			pstmt = conn.prepareStatement("select ordernum, prodnum, prodname, quantity, orderdate, result from orderlist where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				
				order = new OrderListDTO();
				order.setOrdernum(rs.getInt(1));
				order.setProdnum(rs.getInt(2));
				order.setProdname(rs.getString(3));
				order.setQuantity(rs.getInt(4));
				order.setOrderdate(rs.getTimestamp(5));
				order.setResult(rs.getString(6));
				list.add(order);
			}
		}catch(Exception e) {
			System.out.println("DAO : myOrderList error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return list;
	}
	public ArrayList<OrderListDTO> orderList() {
		ArrayList<OrderListDTO> list = new ArrayList<OrderListDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		OrderListDTO order = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from orderlist;");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				order = new OrderListDTO();
				order.setOrdernum(rs.getInt(1));
				order.setId(rs.getString(2));
				order.setProdnum(rs.getInt(3));
				order.setProdname(rs.getString(4));
				order.setQuantity(rs.getInt(5));
				order.setOrderdate(rs.getTimestamp(6));
				order.setResult(rs.getString(7));
				list.add(order);
			}
		}catch(Exception e)
		{
			System.out.println("DAO : orderListAdmin error" + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return list;
	}
	public OrderListDTO orderComplete(int ordernum) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderListDTO order = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("update orderlist set result = '배송완료' where ordernum = ?");
			pstmt.setInt(1, ordernum);
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("DAO : orderComplete error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return order;
	}
	public ProductDTO productSearch(int prodnum) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO product = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from product where prodnum = ?;");
			pstmt.setInt(1, prodnum);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				product = new ProductDTO();
				product.setProdnum(rs.getInt(1));
				product.setProdname(rs.getString(2));
				product.setPrice(rs.getInt(3));
				product.setContent(rs.getString(4));
				product.setCha(rs.getString(5));
				product.setCategory(rs.getString(6));
			}
		}catch(Exception e) {
			System.out.println("DAO : productSearch error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return product;
	}
	public void cartModify(CartDTO cart) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("update cart set quantity = ? where id = ? and prodnum = ?;");
			pstmt.setInt(1, cart.getQuantity());
			pstmt.setString(2, cart.getId());
			pstmt.setInt(3, cart.getProdnum());
			pstmt.executeUpdate();
		}catch(Exception e)
		{
			System.out.println("DAO : cartModify error" + e);
		}finally {
			close(conn, pstmt);
		}
	}
	public TrailerDTO trailerSearch(int trailnum) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		TrailerDTO trailer = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from trailer where trailnum = ?;");
			pstmt.setInt(1, trailnum);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				trailer = new TrailerDTO();
				trailer.setTrailnum(rs.getInt(1));
				trailer.setVideo(rs.getString(2));
				trailer.setVname(rs.getString(3));
				trailer.setVactor(rs.getString(4));
				trailer.setVopen(rs.getString(5));
				trailer.setVgenre(rs.getString(6));
			}
		}catch(Exception e) {
			System.out.println("DAO : trailerSearch error" + e);
		}finally
		{
			close(conn, pstmt, rs);
		}
		return trailer;
	}
}