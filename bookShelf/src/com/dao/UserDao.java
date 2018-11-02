package com.dao;

import com.bean.UserBean;

public interface UserDao {
	public boolean login(String name,String pwd);//登录
	public boolean findUserByName(String name);
	public boolean register(UserBean user);//注册
	public boolean update(int id,String name, String pwd,String phoneNum) ;//更新
	public int findIdByName(String name);//通过name找到用户id
}
