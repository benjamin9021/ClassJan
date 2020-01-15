package com.naver;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. client가 보내준 데이터 획득 
		// 2. dao 객체 생성 및 해당 매서드 호출 및 데이터 획득
		// 3. 바인딩 작업 영역객체.setAttribute();
		// 4. 포워딩(forwarding) 작업 : CommandAction 객체 반환 (ex. new CommandAction)

		MemberDAO dao = new MemberDAO(); // 2번
		List<MemberDTO> list = dao.select();
		
		request.setAttribute("list", list); // 3번
		
		request.getRequestDispatcher("list.jsp").forward(request, response); // 4번
		
		
		
	}

}
