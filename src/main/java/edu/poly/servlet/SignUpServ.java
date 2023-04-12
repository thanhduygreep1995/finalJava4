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

/**
 * Servlet implementation class SignUpServ
 */
@WebServlet("/SignUpServ")
public class SignUpServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		request.getRequestDispatcher("view/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");
		try {
			User user = new User();
			UserDAO udao= new UserDAO();
			BeanUtils.populate(user, request.getParameterMap());
			
			System.out.println(user.getUsername()+"\n"
					+user.getEmail()+"\n"
					+user.getPhone() +"\n"
					+user.getPassword()+"\n"
					+user.getName()+"\n"
					+user.getIsAdmin()+"\n");
			udao.insert(user);
			request.getRequestDispatcher("view/register.jsp").forward(request, response);
			request.setAttribute("message", "Đăng Ký Thành Công");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			e.getCause();
		} 
		
	}

}
