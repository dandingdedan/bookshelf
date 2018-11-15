package com.dao.impl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bean.BookBean;
import com.dao.BookDao;
import com.util.DBconn;



public class BookDaoImpl implements BookDao {
	@Override
	public boolean checkout(String bookIDs) throws SQLException {
		boolean flag = false;
		Connection conn = null;
		String[] ids = bookIDs.split(",");
		String sql = "update book set state = 1 where id=?";	
		try {
			conn = DBconn.getConnection();
			conn.setAutoCommit(false);
			ArrayList<PreparedStatement> stms = new ArrayList<PreparedStatement>();
			for (int i=0;  i<ids.length; i++) {
				PreparedStatement ps =  conn.prepareStatement(sql);
				ps.setInt(1, Integer.parseInt(ids[i]));
				stms.add(ps);
			}
			for (PreparedStatement s : stms) {
				s.executeUpdate();
			}
			
			conn.commit();
			flag = true;
		}catch (SQLException e) {
			conn.rollback();
			System.out.println("add book error");
			e.printStackTrace();
		}finally {
			conn.close();
    	}
		return flag;
	}
	
	@Override
	public boolean checkoutCart(String bookIDs) throws SQLException {
		// TODO Auto-generated method stub
		boolean flag = false;
		Connection conn = null;
		String[] ids = bookIDs.split(",");
		String sql = "update cart set state = 1 where bookID=?";	
		try {
			conn = DBconn.getConnection();
			conn.setAutoCommit(false);
			ArrayList<PreparedStatement> stms = new ArrayList<PreparedStatement>();
			for (int i=0;  i<ids.length; i++) {
				PreparedStatement ps =  conn.prepareStatement(sql);
				ps.setInt(1, Integer.parseInt(ids[i]));
				stms.add(ps);
			}
			for (PreparedStatement s : stms) {
				s.executeUpdate();
			}
			
			conn.commit();
			flag = true;
		}catch (SQLException e) {
			conn.rollback();
			System.out.println("add book error");
			e.printStackTrace();
		}finally {
			conn.close();
    	}
		return flag;
	}
	
	
	@Override
	public boolean addBook(BookBean bookBean) {
		// TODO Auto-generated method stub
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into book(name,price,ISBN,coursecode,picturepath,ownerid,filename,description)values(?,?,?,?,?,?,?,?)";
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
			ps.setString(8, bookBean.getDescription());
			int i =  ps.executeUpdate();
			if(i>0){
				//��������������0
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
	public boolean addLikeBook(int userID, int bookID) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into likebook(bookID, userID)values(?,?)";
		try {
			conn = DBconn.getConnection();
			ps =  conn.prepareStatement(sql);
			ps.setInt(1, bookID);
			ps.setInt(2, userID);
			int i =  ps.executeUpdate();
			if(i>0){
				flag = true;
			}
		}catch (SQLException e) {
			System.out.println("add liked book error");
			e.printStackTrace();
		}finally {
    		DBconn.close(null, ps, conn);
    	}
		return flag;
	}
	@Override
	public boolean addCartBook(int userID, int bookID) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into cart(bookID, userID, state)values(?,?, ?)";
		try {
			conn = DBconn.getConnection();
			ps =  conn.prepareStatement(sql);
			ps.setInt(1, bookID);
			ps.setInt(2, userID);
			ps.setInt(3, 0);
			int i =  ps.executeUpdate();
			if(i>0){
				flag = true;
			}
		}catch (SQLException e) {
			System.out.println("add liked book error");
			e.printStackTrace();
		}finally {
    		DBconn.close(null, ps, conn);
    	}
		return flag;
	}
	
	/*@Override
	public List<BookBean> findBookByName(String name) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	//ps = conn.prepareStatement("select * from book where name=?");
        	//ʵ�����ݿ�ģ����ѯ
        	ps = conn.prepareStatement("select * from book where name like ? and state = 0");
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
        	//ʵ�����ݿ�ģ����ѯ
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
        	//ʵ�����ݿ�ģ����ѯ
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
*/
	@Override
	public List<BookBean> findCartBookByUserID(int userID) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select B.*, U.phonenumber from book B, userinfo U, cart C where C.bookID = B.id and C.userID = U.id and U.id = ? and B.state = 0");
        	ps.setInt(1, userID);
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
            	book.setPhonenumber(rs.getString("phonenumber"));
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
        	ps = conn.prepareStatement("select B.* from book B, userinfo U, likebook L where L.bookID = B.id and L.userID = U.id and U.id = ? and B.state = 0");
        	ps.setInt(1, userID);
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

/*	@Override
	public List<BookBean> findPageRecordsByKeyWords(int startIndex, int pageSize, String keyWords) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select * from book where name like ? or ISBN like ? or coursecode like ? and state =0 limit ?,?");
        	ps.setString(1, "%" + keyWords + "%");
        	ps.setString(2, "%" + keyWords + "%");
        	ps.setString(3, "%" + keyWords + "%");
        	ps.setInt(4, startIndex);
        	ps.setInt(5, pageSize);
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
	}*/

/*	@Override
	public int getTotalRecordsNumByKeyWords(String keyWords) {
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int num = 0;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select count(*) from book where name like ? or ISBN like ? or coursecode like ? and state = 0");
            rs=ps.executeQuery();
            rs.next();
            num = rs.getInt(1);
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return num;
	}*/

	@Override
	public List<BookBean> findPageRecordsByName(int startIndex, int pageSize, String keyWords) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select * from book where name like ?  and state =0 limit ?,?");
        	ps.setString(1, "%" + keyWords + "%");
        	ps.setInt(2, startIndex);
        	ps.setInt(3, pageSize);
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

	@Override
	public List<BookBean> findPageRecordsByISBN(int startIndex, int pageSize, String keyWords) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select * from book where ISBN like ?  and state =0 limit ?,?");
        	ps.setString(1, "%" + keyWords + "%");
        	ps.setInt(2, startIndex);
        	ps.setInt(3, pageSize);
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

	@Override
	public List<BookBean> findPageRecordsByCourseCode(int startIndex, int pageSize, String keyWords) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select * from book where coursecode like ?  and state =0 limit ?,?");
        	ps.setString(1, "%" + keyWords + "%");
        	ps.setInt(2, startIndex);
        	ps.setInt(3, pageSize);
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

	@Override
	public int getTotalRecordsNumByName(String keyWords) {
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int num = 0;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select count(*) from book where name like ? and state = 0");
        	ps.setString(1, "%" + keyWords + "%");
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
	public int getTotalRecordsNumByISBN(String keyWords) {
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int num = 0;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select count(*) from book where ISBN like ? and state = 0");
        	ps.setString(1, "%" + keyWords + "%");
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
	public int getTotalRecordsNumByCourseCode(String keyWords) {
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int num = 0;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select count(*) from book where coursecode like ? and state = 0");
        	ps.setString(1, "%" + keyWords + "%");
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
	public BookBean findBookById(int id) {
		BookBean book = new BookBean();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select * from book where id=?");
        	ps.setInt(1, id);
            rs=ps.executeQuery();
            while(rs.next()) {
            	book.setId(rs.getInt("id"));
            	book.setName(rs.getString("name"));
            	book.setPrice(rs.getFloat("price"));
            	book.setState(rs.getInt("state"));
            	book.setISBN(rs.getString("ISBN"));
            	book.setCourseCode(rs.getString("coursecode"));
            	book.setPicturePath(rs.getString("picturepath"));
            	book.setFilename(rs.getString("filename"));
            	book.setDescription(rs.getString("description"));
            }
            return book;
        }catch (SQLException e) {
			e.printStackTrace();
		}finally {
    		DBconn.close(rs, ps, conn);
    	}
		return null;
	}

	@Override
	public List<BookBean> findBoughtBookByUserID(int userID) {
		List<BookBean> list = new ArrayList<BookBean>();
		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
        	conn = DBconn.getConnection();
        	ps = conn.prepareStatement("select B.*, U.phonenumber from book B, userinfo U, cart C where C.bookID = B.id and C.userID = U.id and U.id = ? and B.state = 1 and C.state = 1");
        	ps.setInt(1, userID);
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
            	book.setPhonenumber(rs.getString("phonenumber"));
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
