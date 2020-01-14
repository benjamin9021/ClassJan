package com.naver;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertUIServlet
 */
@WebServlet("/insertui")
public class InsertUIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertUIServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		      RequestDispatcher dis = request.getRequestDispatcher("insert.html"); // 포어딩 자동으로 다른 페이지로 넘어가는 역할.
//		      dis.forward(request, response);
		ServletContext ctx = getServletContext();
		String url = ctx.getInitParameter("url");
		System.out.println(url);
		
		
		String user = getInitParameter("user"); // 초기화 파라미터 하는 법
		System.out.println(user);
		String password = getInitParameter("password");
		System.out.println(password);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
