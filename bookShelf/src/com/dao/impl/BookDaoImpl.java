package com.dao.impl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bean.BookBean;
import com.dao.BookDao;
import com.util.DBconn;



public class BookDaoImpl implements BookDao {
	@Override
	public boolean addBook(BookBean bookBean) {
		// TODO Auto-generated method stub
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into book(name,price,ISBN,coursecode,picturepath,ownerid,filename)values(?,?,?,?,?,?,?)";
		try {
			conn = DBconn.getConnection();
			ps =  conn.prepareStatement(sql);
			ps.setString(1, bookBean.getName());
			ps.setFloat(2, bookBean.getPrice());
			ps.setString(3, bookBean.getISBN());
			ps.setString(4, bookBean.getCourseCode());
			ps.setString(5, bookBean.getPicturePath());
			ps.setInt(6, bookBean.getOwnerId());
			ps.setString(7, bookBean.getFilename());
			int i =  ps.executeUpdate();
			if(i>0){
				//操作的条数大于0
				flag = true;
			}
		}catch (SQLException e) {
			System.out.println("add book error");
			e.printStackTrace();
		}finally {
    		DBconn.close(null, ps, conn);
    	}
		return flag;
	}

	@Override
	public List<BookBean> findBookByName(String name) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	//ps = conn.prepareStatement("select * from book where name=?");
        	//实现数据库模糊查询
        	ps = conn.prepareStatement("select * from book where name like ?");
        	ps.setString(1, "%" + name + "%");
            rs=ps.executeQuery();
            while(rs.next()) {
            	BookBean book = new BookBean();
            	book.setId(rs.getInt("id"));
            	book.setName(rs.getString("name"));
            	book.setPrice(rs.getFloat("price"));
            	book.setState(rs.getInt("state"));
            	book.setISBN(rs.getString("ISBN"));
            	book.setCourseCode(rs.getString("coursecode"));
            	book.setPicturePath(rs.getString("picturepath"));
            	list.add(book);
            }
            return list;
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return null;

	}

	@Override
	public List<BookBean> findBookByISBN(String ISPN) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	//ps = conn.prepareStatement("select * from book where ISBN=?");
        	//实现数据库模糊查询
        	ps = conn.prepareStatement("select * from book where ISBN like ?");
        	ps.setString(1, "%" + ISPN + "%");
            rs=ps.executeQuery();
            while(rs.next()) {
            	BookBean book = new BookBean();
            	book.setId(rs.getInt("id"));
            	book.setName(rs.getString("name"));
            	book.setPrice(rs.getFloat("price"));
            	book.setState(rs.getInt("state"));
            	book.setISBN(rs.getString("ISBN"));
            	book.setCourseCode(rs.getString("coursecode"));
            	book.setPicturePath(rs.getString("picturepath"));
            	list.add(book);
            }
            return list;
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return null;
	}

	@Override
	public List<BookBean> findBookByCourseCode(String courseCode) {
		// TODO Auto-generated method stub
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	//ps = conn.prepareStatement("select * from book where coursecode=?");
        	//实现数据库模糊查询
        	ps = conn.prepareStatement("select * from book where coursecode like ?");
        	ps.setString(1, "%" + courseCode + "%");
            rs=ps.executeQuery();
            while(rs.next()) {
            	BookBean book = new BookBean();
            	book.setId(rs.getInt("id"));
            	book.setName(rs.getString("name"));
            	book.setPrice(rs.getFloat("price"));
            	book.setState(rs.getInt("state"));
            	book.setISBN(rs.getString("ISBN"));
            	book.setCourseCode(rs.getString("coursecode"));
            	book.setPicturePath(rs.getString("picturepath"));
            	list.add(book);
            }
            return list;
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return null;
	}

	@Override
	public List<BookBean> findLikeBookByUserID(int userID) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select B.* from book B, userinfo U, likebook L where L.bookID = B.id and L.userID = U.id and U.id = ?");
        	ps.setInt(1, userID);
            rs=ps.executeQuery();
            while(rs.next()) {
            	BookBean book = new BookBean();
            	book.setId(rs.getInt("id"));
            	book.setName(rs.getString("name"));
            	book.setPrice(rs.getFloat("price"));
            	book.setState(rs.getInt("state"));
            	book.setISBN(rs.getString("ISBN"));
            	book.setCourseCode(rs.getString("coursecode"));
            	book.setPicturePath(rs.getString("picturepath"));
            	list.add(book);
            }
            return list;
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return null;
	}

	@Override
	public List<BookBean> showAllBook() {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select * from book");
            rs=ps.executeQuery();
            while(rs.next()) {
            	BookBean book = new BookBean();
            	book.setId(rs.getInt("id"));
            	book.setName(rs.getString("name"));
            	book.setPrice(rs.getFloat("price"));
            	book.setState(rs.getInt("state"));
            	book.setISBN(rs.getString("ISBN"));
            	book.setCourseCode(rs.getString("coursecode"));
            	book.setPicturePath(rs.getString("picturepath"));
            	list.add(book);
            }
            return list;
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return null;
	}

	@Override
	public int getTotalRecordsNum() {
		// TODO Auto-generated method stub
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int num = 0;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select count(*) from book where state = 0");
            rs=ps.executeQuery();
            rs.next();
            num = rs.getInt(1);
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return num;
	}

	@Override
	public List<BookBean> findPageRecords(int startIndex, int pageSize) {
		// TODO Auto-generated method stub
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select * from book where state = 0 limit ?,?");
        	ps.setInt(1, startIndex);
        	ps.setInt(2, pageSize);
            rs=ps.executeQuery();
            while(rs.next()) {
            	BookBean book = new BookBean();
            	book.setId(rs.getInt("id"));
            	book.setName(rs.getString("name"));
            	book.setPrice(rs.getFloat("price"));
            	//book.setState(rs.getInt("state"));
            	book.setISBN(rs.getString("ISBN"));
            	book.setCourseCode(rs.getString("coursecode"));
            	book.setPicturePath(rs.getString("picturepath"));
            	book.setFilename(rs.getString("filename"));
            	list.add(book);
            }
            return list;
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return null;
	}


}
