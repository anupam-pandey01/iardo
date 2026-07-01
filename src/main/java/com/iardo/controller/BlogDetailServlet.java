package com.iardo.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iardo.model.BlogPost;
import com.iardo.service.ContentfulService;

@WebServlet("/blog/*")
public class BlogDetailServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private final ContentfulService service = new ContentfulService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException, javax.servlet.ServletException {

		String pathInfo = req.getPathInfo();

		if (pathInfo == null || pathInfo.equals("/")) {
			res.sendRedirect(req.getContextPath() + "/blog");
			return;
		}

		String slug = pathInfo.substring(1); // strip leading "/"
		/* System.out.println("Requested slug = " + slug); */

		try {
			BlogPost blog = service.getBlogBySlug(slug);
			if (blog == null) {
				res.sendError(404, "Post not found");
				return;
			}

			req.setAttribute("blog", blog);

			req.getRequestDispatcher("/article/blog-details.jsp").forward(req, res);
		} catch (Exception e) {
			res.sendError(500);
		}
	}
}