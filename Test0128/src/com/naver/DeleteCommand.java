package com.naver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		MemberDAO2 dao = new MemberDAO2();
//		dao.delete(id);

		HttpSession sess = request.getSession();
		sess.setAttribute("delete", id);

		return new CommandAction(true, "delete.do");
	}

}
