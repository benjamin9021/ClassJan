package com.naver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertUICommand implements Commnad {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) {
		return new CommandAction(true, "insert.jsp");
	}

}
