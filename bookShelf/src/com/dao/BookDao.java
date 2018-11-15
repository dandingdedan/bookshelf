package com.dao;

import java.sql.SQLException;
import java.util.List;

import com.bean.BookBean;

public interface BookDao {
	public boolean addBook(BookBean bookBean);
	public boolean addLikeBook(int userID, int bookID);
	public boolean addCartBook(int userID, int bookID);
	public List<BookBean> findLikeBookByUserID(int userID);
	public List<BookBean> findCartBookByUserID(int userID);
	public List<BookBean> findBoughtBookByUserID(int userID);
	public List<BookBean> findPageRecords(int startIndex, int pageSize);
	public List<BookBean> findPageRecordsByName(int startIndex, int pageSize, String keyWords);
	public List<BookBean> findPageRecordsByISBN(int startIndex, int pageSize, String keyWords);
	public List<BookBean> findPageRecordsByCourseCode(int startIndex, int pageSize, String keyWords);
	public BookBean findBookById(int id);
	public int getTotalRecordsNum();	
	public int getTotalRecordsNumByName(String keyWords);
	public int getTotalRecordsNumByISBN(String keyWords);
	public int getTotalRecordsNumByCourseCode(String keyWords);
	public boolean checkout(String bookIDs) throws SQLException;
	public boolean checkoutCart(String bookIDs) throws SQLException;
}
