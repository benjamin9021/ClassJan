package com.naver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Commnad {

	CommandAction execute(HttpServletRequest request, HttpServletResponse response);

}
