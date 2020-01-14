package com.naver;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ms2")
public class Myservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Myservlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = getServletContext();
		InputStream in = application.getResourceAsStream("/WEB-INF/show.txt");
		InputStreamReader isr = new InputStreamReader(in);
		BufferedReader br = new BufferedReader(isr);
		
		response.setContentType("text/html;charset = euc-kr");
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		while (true) {
			String msg = br.readLine();
			if (msg == null) {
				break;
			}
			out.print(msg);
			out.print("<br>");
		}
		
		out.print("</body>");
		out.print("</html>");
		
		br.close();
		isr.close();
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		
	}
}