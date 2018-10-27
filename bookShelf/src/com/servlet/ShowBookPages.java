package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.BookBean;
import com.bean.Page;
import com.service.Service;
import com.service.impl.ServiceImpl;

/**
 * Servlet implementation class ShowBookPages
 */
@WebServlet("/ShowBookPages")
public class ShowBookPages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowBookPages() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Service s= new ServiceImpl();
		String num = request.getParameter("num");//用户要看的页码		
		Page page = s.findBookPageRecords(num);
		page.setUrl("/ShowBookPages");
		request.setAttribute("page", page);
		request.getRequestDispatcher("/listbooks.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
/*		Service s= new ServiceImpl();
		String num = request.getParameter("num");//用户要看的页码
		
		Page page = s.findBookPageRecords(num);
		List a = page.getRecords();
		for(int i =0;i<a.size();i++) {
			BookBean test = (BookBean) a.get(i);
			System.out.println(test.getName());
		}
		page.setUrl("/showPage");
		request.setAttribute("page", page);
		request.getRequestDispatcher("/listbooks.jsp").forward(request, response);*/
	}

}
