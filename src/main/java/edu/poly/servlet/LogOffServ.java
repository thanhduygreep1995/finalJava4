package edu.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.utils.CookieUtils;
import edu.poly.utils.SessionUtils;

/**
 * Servlet implementation class LogOffServ
 */
@WebServlet("/LogOffServ")
public class LogOffServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CookieUtils.add("username", null, 0, response);
		SessionUtils.invalidate(request);
		request.setAttribute("isLogin", false);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
