package com.dao;

import java.util.List;

import com.bean.BookBean;

public interface BookDao {
	public boolean addBook(BookBean bookBean);
	//public List<BookBean> showAllBook();
	//public List<BookBean> findBookByName(String name);
	//public List<BookBean> findBookByISBN(String ISPN);
	//public List<BookBean> findBookByCourseCode(String courseCode);
	public List<BookBean> findLikeBookByUserID(int userID);
	public List<BookBean> findPageRecords(int startIndex, int pageSize);
	//public List<BookBean> findPageRecordsByKeyWords(int startIndex, int pageSize, String keyWords);
	public List<BookBean> findPageRecordsByName(int startIndex, int pageSize, String keyWords);
	public List<BookBean> findPageRecordsByISBN(int startIndex, int pageSize, String keyWords);
	public List<BookBean> findPageRecordsByCourseCode(int startIndex, int pageSize, String keyWords);
	public int getTotalRecordsNum();
	//public int getTotalRecordsNumByKeyWords(String keyWords);
	public int getTotalRecordsNumByName(String keyWords);
	public int getTotalRecordsNumByISBN(String keyWords);
	public int getTotalRecordsNumByCourseCode(String keyWords);
}
