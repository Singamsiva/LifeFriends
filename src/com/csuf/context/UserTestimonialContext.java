package com.csuf.context;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csuf.base.BaseContext;
import com.csuf.bean.UserStory;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public class UserTestimonialContext extends BaseContext {

	private static final long serialVersionUID = 1L;

	public UserTestimonialContext(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public List<UserStoryUser> getUserStories() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<UserStoryUser> userstories = new ArrayList<UserStoryUser>();

		try {
			ps = getConnection().prepareStatement(
					"SELECT us.*, u.email FROM userstory as us INNER JOIN user as u ON us.userId = u.userId");
			rs = ps.executeQuery();

			logger.info("Loading list of userstories");

			while (rs.next()) {
				userstories.add(buildUserStoryUser(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("Database connection problem");
		}
		return userstories;
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

	private UserStoryUser buildUserStoryUser(ResultSet rs) throws SQLException {
		return new UserStoryUser(rs.getInt("userStoryId"), rs.getString("title"), rs.getString("description"),
				rs.getInt("userId"), rs.getBoolean("active"), rs.getString("email"));
	}

	@Override
	public String getTitle() {
		return "User Testimonial";
	}

	public static class UserStoryUser extends UserStory {

		private static final long serialVersionUID = 1L;
		private String userEmail;

		public String getUserEmail() {
			return userEmail;
		}

		public UserStoryUser(int userStoryId, String title, String description, int userId, boolean active,
				String email) {
			super(userStoryId, title, description, userId, active);
			this.userEmail = email;
		}

	}
}