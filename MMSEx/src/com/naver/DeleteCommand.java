package com.naver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		new MemberDAO().delete(id);

		return new CommandAction(false, "loginui.do");
	}

}
