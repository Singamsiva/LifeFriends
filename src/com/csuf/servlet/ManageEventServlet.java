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
 * @date 01-Nov-2015
 */
@WebServlet(name = "ManageEvent", urlPatterns = { "/ManageEvent" })
public class ManageEventServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer eventId = getEventId(req);
		if (eventId == null) {
			req.getSession().setAttribute("error", "Invalid eventId sent");
		} else {
			boolean response = updateEvent(eventId);
			if (!response) {
				req.getSession().setAttribute("error", "Error updating event");
			}
		}
		resp.sendRedirect("ManageEvent.jsp");
	}

	private Integer getEventId(HttpServletRequest req) {
		String object = req.getParameter("eventId");

		if (object != null) {
			try {
				return Integer.parseInt(object);
			} catch (NumberFormatException e) {
				// returned outside
			}
		}
		return null;
	}

	private boolean updateEvent(int eventId) {
		PreparedStatement ps = null;
		try {
			ps = getConnection().prepareStatement("update event set active = !active where eventId = ?");
			ps.setInt(1, eventId);
			int result = ps.executeUpdate();
			return result > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("Database connection problem");
		}

		return false;
	}

}
