package com.naver;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListCommand implements Commnad {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		List<MemberDTO> list = new MemberDAO().list();
		request.setAttribute("list", list);
		return new CommandAction(false, "list.jsp");
	}

}
