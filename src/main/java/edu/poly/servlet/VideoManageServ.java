package edu.poly.servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.dao.VideoDAO;
import edu.poly.entity.Video;
import edu.poly.utils.UploadUtils;

/**
 * Servlet implementation class VideoManageServ
 */

@WebServlet({"/VideoManageServ","/VideoManageServ/create","/VideoManageServ/update",
	"/VideoManageServ/delete","/VideoManageServ/reset","/VideoManageServ/edit"})
@MultipartConfig
public class VideoManageServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();
		if(url.contains("edit")) {
			edit(request,response);
			return;
		}
		if(url.contains("delete")) {
			delete(request,response);
			return;
		}
		if(url.contains("reset")) {
			reset(request,response);
			return;
		}
		Video video = new Video();
		
		video.setPoster("img/img-01.jpg");
		request.setAttribute("video", video);
		request.getRequestDispatcher("admin/videos/video-edition.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();
		if(url.contains("create")) {
			create(request,response);
			return;
		}
		if(url.contains("delete")) {
			delete(request,response);
			return;
		}
		if(url.contains("reset")) {
			reset(request,response);
			return;
		}
		if(url.contains("update")) {
			update(request,response);
			return;
		}
//		!=null ? video.getPoster():'img/img-01.jpg'
		Video video = new Video();
	
		video.setPoster("img/img-01.jpg");
		request.setAttribute("video", video);
		request.getRequestDispatcher("admin/videos/video-edition.jsp").forward(request, response);
	}

	private void create(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());

			video.setPoster("/img/"  
			+ UploadUtils.processUploadeField("cover", request,
					"/img", video.getPoster()));
			VideoDAO vdao = new VideoDAO();
			vdao.insert(video);
			
			request.setAttribute("video", video);
			request.setAttribute("message", "Video is inserted");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		request.getRequestDispatcher("/admin/videos/video-edition.jsp").forward(request, response);
	}
	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	private void reset(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	


}
