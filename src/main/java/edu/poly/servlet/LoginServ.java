package edu.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.dao.UserDAO;
import edu.poly.domain.LoginFormStorage;
import edu.poly.entity.User;
import edu.poly.utils.CookieUtils;
import edu.poly.utils.SessionUtils;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = CookieUtils.get("username", request);
		if(username ==null) {
			request.getRequestDispatcher("view/login.jsp").forward(request, response);
			return;
		}
		SessionUtils.add(request, "username", username);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			LoginFormStorage form = new LoginFormStorage();
			BeanUtils.populate(form, request.getParameterMap());
			UserDAO udao = new UserDAO();
			User user = udao.findByID(form.getUsername());
			
			if(user!=null && user.getPassword().equals(form.getPassword())) {
				SessionUtils.add(request, "username", user.getUsername());
				if(form.isRemember()) {
					CookieUtils.add("username", form.getUsername(), 24, response);
				}else {
					CookieUtils.add("username", form.getUsername(), 0, response);
				}
				request.setAttribute("isLogin", true);
				request.setAttribute("name", user.getName());
				request.getRequestDispatcher("index.jsp").forward(request, response);
				return;
			}
			request.setAttribute("error", "invalid username or password");
			
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
		}
		request.getRequestDispatcher("view/login.jsp").forward(request, response);
	}

}
