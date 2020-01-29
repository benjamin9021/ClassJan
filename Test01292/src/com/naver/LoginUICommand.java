package com.naver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginUICommand implements Commnad {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return new CommandAction(false, "login.jsp");
	}

}
