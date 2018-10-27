package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name"); //从页面得到参数
		String pwd = request.getParameter("password");
		
		UserDao ud = new UserDaoImpl();
	//	PrintWriter out = response.getWriter();//初始化out对象
		if(ud.login(name, pwd)){
			   /*
			    * 在servlet中实现服务器端跳转，并向跳转页面传递参数
	         */
			
			//request.setAttribute("name", "haiyun");  // 为request对象添加参数
/*			在jsp中得到有两种方法，第一种：
			<%=request.getAttribute("str");%>
			或${str}*/ //在下一个jsp界面得到该参数
	        //RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");    // 使用req对象获取RequestDispatcher对象
	        //dispatcher.forward(request, response);
			//System.out.println("success");
			//request.getRequestDispatcher("/success.jsp").forward(request, response);//跳转
			request.getSession().setAttribute("username", name);
			response.getWriter().append("0");
		}else{
			//response.sendRedirect("index.jsp"); //不成功则重定向
			response.getWriter().append("1");
			//out.print("<script language='javascript'>alert('UserName or password Wrong!!');window.location.href='login.jsp';</script>");  
		}
	}
}
