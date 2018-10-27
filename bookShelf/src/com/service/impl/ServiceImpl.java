package com.service.impl;

import java.util.List;

import com.bean.BookBean;
import com.bean.Page;
import com.dao.BookDao;
import com.dao.impl.BookDaoImpl;
import com.service.Service;

public class ServiceImpl implements Service {
	
	private BookDao bookDao = new BookDaoImpl();
	@Override
	public Page findBookPageRecords(String num) {
		int pageNum = 1;
		if(num!=null&&!num.equals("")){
			pageNum = Integer.parseInt(num);
		}
		int totalRecordsNum = bookDao.getTotalRecordsNum();
		Page page = new Page(pageNum, totalRecordsNum);
		List<BookBean> records = bookDao.findPageRecords(page.getStartIndex(),page.getPageSize());
		page.setRecords(records);
		return page;
	}

}
