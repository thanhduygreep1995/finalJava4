package edu.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.dao.UserDAO;
import edu.poly.entity.User;
import edu.poly.utils.SessionUtils;

/**
 * Servlet implementation class EditProfileServ
 */
@WebServlet("/EditProfileServ")
public class EditProfileServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = SessionUtils.getLoginedUsername(request);
		if(username==null) {
			request.getRequestDispatcher("view/login.jsp").forward(request, response);
		}
		try {
			UserDAO udao = new UserDAO();
			User user = udao.findByID(username);
			request.setAttribute("user", user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		request.getRequestDispatcher("view/edit-profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			
			
			String username = SessionUtils.getLoginedUsername(request);
			UserDAO udao = new UserDAO();
			User oldUser = udao.findByID(username);
			user.setIsAdmin(oldUser.getIsAdmin());
			udao.update(user);
			
			
			request.setAttribute("message", "User profile updated!!!");
			request.setAttribute("user", user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		request.getRequestDispatcher("view/edit-profile.jsp").forward(request, response);
	}
	

}
