package com.naver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCommand implements Commnad {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession sess = request.getSession(false);
		if (sess != null) {
			sess.invalidate();
//			sess.removeAttribute();
		}
		return new CommandAction(true, "login.jsp");
	}


}
