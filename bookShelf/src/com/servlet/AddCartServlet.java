package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.BookDao;
import com.dao.UserDao;
import com.dao.impl.BookDaoImpl;
import com.dao.impl.UserDaoImpl;
import com.service.Service;
import com.service.impl.ServiceImpl;


/**
 * Servlet implementation class AddCartServlet
 */
@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Service s= new ServiceImpl();	
		UserDao user= new UserDaoImpl();
		PrintWriter out = response.getWriter();
		String name = (String) request.getSession().getAttribute("name");
		if(name==null||name.equals("")){
			out.print("<script language='javascript'>alert('Please Login First!');window.location.href='login.jsp';</script>"); 
		}else {
			String id = request.getParameter("bookID");
			String url = request.getParameter("url");
			int bookID = 0;
			if(id!=null&&!id.equals("")){
				bookID = Integer.parseInt(id);
			}
			int userID = user.findIdByName(name);
			boolean rs = s.addCartBook(userID, bookID);
			
			if (!rs) {
				out.printf("<script language='javascript'>alert('Fail to add to cart!');window.location.href='%s';</script>", url); 
				return;
			}
			
			out.printf("<script language='javascript'>alert('Add to cart successfully!');window.location.href='%s';</script>", url);
		}
/*		String id = request.getParameter("bookID");
		String url = request.getParameter("url");
		int bookID = 0;
		if(id!=null&&!id.equals("")){
			bookID = Integer.parseInt(id);
		}
		int userID = user.findIdByName(name);
		boolean rs = s.addCartBook(userID, bookID);
		
		if (!rs) {
			out.printf("<script language='javascript'>alert('Fail to add to cart!');window.location.href='%s';</script>", url); 
			return;
		}
		
		out.printf("<script language='javascript'>alert('Add to cart successfully!');window.location.href='%s';</script>", url);*/ 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
