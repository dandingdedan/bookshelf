package com.service;

import com.bean.Page;

public interface Service {
	Page findBookPageRecords(String num);
	//Page findBookPageRecordsByKeyWords(String keywords);
	Page findBookPageRecordsByName(String keywords);
	Page findBookPageRecordsByISBN(String keywords);
	Page findBookPageRecordsByCourseCode(String keywords);
}
