package com.dao;

import com.bean.UserBean;

public interface UserDao {
	public boolean login(String name,String pwd);//µÇÂ¼
	public boolean findUserByName(String name);
	public boolean register(UserBean user);//×¢²á
	public boolean update(int id,String name, String pwd,String phoneNum) ;//¸üÐÂ
}
