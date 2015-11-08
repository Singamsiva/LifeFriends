/**
 *
 */
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
 * @date 31-Oct-2015
 */

@WebServlet(name = "ManageUser", urlPatterns = { "/ManageUser" })
public class ManageUserServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer userId = getUserId(req);
		if (userId == null) {
			req.getSession().setAttribute("error", "Invalid userId sent");
		} else {
			boolean response = updateUser(userId);
			if (!response) {
				req.getSession().setAttribute("error", "Error updating user");
			}
		}
		resp.sendRedirect("ManageUser.jsp");
	}

	private Integer getUserId(HttpServletRequest req) {
		String object = req.getParameter("userId");

		if (object != null) {
			try {
				return Integer.parseInt(object);
			} catch (NumberFormatException e) {
				// returned outside
			}
		}
		return null;
	}

	private boolean updateUser(int userId) {
		PreparedStatement ps = null;
		try {
			ps = getConnection().prepareStatement("update user set active = !active where userid = ?");
			ps.setInt(1, userId);
			int result = ps.executeUpdate();
			return result > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("Database connection problem");
		}

		return false;
	}
}
