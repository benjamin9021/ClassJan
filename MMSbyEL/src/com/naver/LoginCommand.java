package com.naver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCommand implements Commnad {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int age = -1;
		if (pw != null) {
			age = Integer.parseInt(pw);
		}
		MemberDTO login = new MemberDAO().login(id, age);
		HttpSession sess = request.getSession();
		sess.setAttribute("login", login);
		
		
		return new CommandAction(true, "list.do");
	}

}
