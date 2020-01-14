package com.naver;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertServlet
 */

@WebServlet ("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String sAge = request.getParameter("age");

		int age = -1;
		if (sAge != null) {
			age = Integer.parseInt(sAge);
		}

		MemberDAO dao = new MemberDAO();
		dao.insert(new MemberDTO(id, name, age));
		
		ServletContext application = getServletContext();
		application.setAttribute("id", id);
		application.setAttribute("name", name);
		application.setAttribute("age", age);
		application.setAttribute("dto", new MemberDTO(id, name, age));
		
		response.sendRedirect("test.jsp");
		
//		
//		PrintWriter out = response.getWriter();
//		out.print("<html>");
//		out.print("<body>");
//		out.print(id);
//		out.print("<br>");
//		out.print(name);
//		out.print("<br>");
//		out.print(age);
//		out.print("<br>");
//		out.print("</body>");
//		out.print("</html>");

	}

}
