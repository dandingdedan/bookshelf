package com.util;

import java.sql.*;

public class DBconnTest {
    public static void main(String[] args) throws ClassNotFoundException, SQLException  {
    	
    	final String url = "jdbc:mysql://localhost:3306/bookshelf?useunicuee=true& characterEncoding=utf8"; 
    	final String username = "root"; 
    	final String password = "root"; 
        //1.加载驱动程序
        Class.forName("com.mysql.jdbc.Driver");
        //2.获得数据库链接
        Connection conn=DriverManager.getConnection(url, username, password);
        //3.通过数据库的连接操作数据库，实现增删改查（使用Statement类）
        Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select * from userinfo");
        //4.处理数据库的返回结果(使用ResultSet类)
        while(rs.next()){
            System.out.println(rs.getString("name"));
        }
        
        //关闭资源
        rs.close();
        st.close();
        conn.close();
    }
}
