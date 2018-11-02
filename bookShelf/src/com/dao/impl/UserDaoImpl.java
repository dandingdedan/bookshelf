package com.dao.impl;

import com.bean.UserBean;
import com.dao.UserDao;
import com.util.DBconn;

import java.sql.*;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean login(String name, String pwd) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from userinfo where name= ? and password= ?";
		try {
		    conn= DBconn.getConnection();
		    ps = conn.prepareStatement(sql);
		    ps.setString(1, name);
		    ps.setString(2, pwd);
		    rs = ps.executeQuery();
			while(rs.next()){
				flag = true;

			}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		DBconn.close(null, ps, conn);
	}
		return flag;
	}

	@Override
	public boolean register(UserBean userBean) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into userinfo(name,password,phonenumber,emailaddress)values(?,?,?,?)";
		try {
			 conn = DBconn.getConnection();
	    	 ps = conn.prepareStatement(sql);
	    	 ps.setString(1, userBean.getName());
	    	 ps.setString(2, userBean.getPassword());
	    	 ps.setString(3, userBean.getPhoneNumber());
	    	 ps.setString(4, userBean.getEmailAddress());
	    	 int i = ps.executeUpdate();
	    	 if(i>0) {
	    		 flag = true;
	    	 }
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconn.close(null, ps, conn);
		}
		return flag;
	}

	@Override
	public boolean update(int id,String name, String pwd,String phoneNum) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "update userinfo set name =?, password = ?, phonenumber = ? where id = ?";
    	try {
    		conn = DBconn.getConnection();
    		ps = conn.prepareStatement(sql);
	    	ps.setString(1, name);
	    	ps.setString(2, pwd);
	    	ps.setString(3, phoneNum);
	    	ps.setInt(4, id);
    		int i = ps.executeUpdate();
    		if(i>0) {
    			flag = true;
    		}
    	}catch(SQLException e) {
    		e.printStackTrace();
    	}finally {
    		DBconn.close(null, ps, conn);
    	}
    	return flag;
	}

	@Override
	public boolean findUserByName(String name) {
		// TODO Auto-generated method stub
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from userinfo where name= ?";
		try {
		    conn= DBconn.getConnection();
		    ps = conn.prepareStatement(sql);
		    ps.setString(1, name);
		    rs = ps.executeQuery(); 
			while(rs.next()){
				flag = true;

			}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		DBconn.close(null, ps, conn);
	}
		return flag;
	}

	@Override
	public int findIdByName(String name) {
		// TODO Auto-generated method stub
		int id =0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from userinfo where name= ?";
		try {
		    conn= DBconn.getConnection();
		    ps = conn.prepareStatement(sql);
		    ps.setString(1, name);
		    rs = ps.executeQuery(); 
			while(rs.next()){
				id = rs.getInt("id");

			}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		DBconn.close(null, ps, conn);
	}
		return id;
	}

}
