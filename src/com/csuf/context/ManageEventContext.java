package com.csuf.context;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csuf.base.BaseContext;
import com.csuf.bean.Event;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public class ManageEventContext extends BaseContext {

	private static final long serialVersionUID = 1L;

	public ManageEventContext(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public List<Event> getEvents() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Event> events = new ArrayList<Event>();

		try {
			ps = getConnection().prepareStatement("select * from event");
			rs = ps.executeQuery();

			logger.info("Loading list of events");

			while (rs.next()) {
				events.add(buildEvent(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("Database connection problem");
		}
		return events;
	}

	public String getActiveButtonCss(boolean active) {
		return active ? "btn-danger" : "btn-primary";
	}

	public String getActiveIconCss(boolean active) {
		return active ? "fa-eye" : "fa-eye-slash";
	}

	public String getActiveButtonName(boolean active) {
		return active ? "Deactivate" : "Activate";
	}

	private Event buildEvent(ResultSet rs) throws SQLException {
		return new Event(rs.getInt("eventId"), rs.getString("type"), rs.getString("title"), rs.getString("description"),
				rs.getDate("startDate"), rs.getDate("endDate"), rs.getString("address"), rs.getString("city"),
				rs.getString("state"), rs.getString("zip"), rs.getString("country"), rs.getDate("createdDate"),
				rs.getBoolean("active"));
	}

	@Override
	public String getTitle() {
		return "Manage Event";
	}
}