
package com.csuf.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csuf.base.BaseServlet;

/**
 * @author Divya
 * @date 01-Nov-2015
 */
@WebServlet(name = "UserTestimonial", urlPatterns = { "/UserTestimonial" })
public class UserTestimonialServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer userStoryId = getUserStoryId(req);
		if (userStoryId == null) {
			req.getSession().setAttribute("error", "Invalid UserStoryId sent");
		} else {
			boolean response = updateUserStory(userStoryId);
			if (!response) {
				req.getSession().setAttribute("error", "Error updating User Story");
			}
		}
		resp.sendRedirect("UserTestimonial.jsp");
	}

	private Integer getUserStoryId(HttpServletRequest req) {
		String object = req.getParameter("userStoryId");

		if (object != null) {
			try {
				return Integer.parseInt(object);
			} catch (NumberFormatException e) {
				// returned outside
			}
		}
		return null;
	}

	private boolean updateUserStory(int userStoryId) {
		PreparedStatement ps = null;
		try {
			ps = getConnection().prepareStatement("update userstory set active = !active where userStoryId = ?");
			ps.setInt(1, userStoryId);
			int result = ps.executeUpdate();
			return result > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("Database connection problem");
		}

		return false;
	}
}
