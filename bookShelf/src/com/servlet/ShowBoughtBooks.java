package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.BookBean;
import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.service.Service;
import com.service.impl.ServiceImpl;

/**
 * Servlet implementation class ShowBoughtBooks
 */
@WebServlet("/ShowBoughtBooks")
public class ShowBoughtBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowBoughtBooks() {
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
		PrintWriter out = response.getWriter();//初始化out对象
		String name = (String) request.getSession().getAttribute("name");
		if(name==null||name.equals("")){
			out.print("<script language='javascript'>alert('Please Login First!');window.location.href='login.jsp';</script>"); 
		}else {
			int userID = user.findIdByName(name);
			List<BookBean> records = s.findBoughtBookByUserID(userID);
			float total = 0;
			for (int i = 0; i < records.size(); i++) {
				total += records.get(i).getPrice();
			}	
			request.setAttribute("records", records);
			request.setAttribute("total", total);
			request.getRequestDispatcher("/bought.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
