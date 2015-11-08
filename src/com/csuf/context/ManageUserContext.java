package com.csuf.context;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csuf.base.BaseContext;
import com.csuf.bean.User;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public class ManageUserContext extends BaseContext {

	private static final long serialVersionUID = 1L;

	public ManageUserContext(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public List<User> getUsers() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<User> users = new ArrayList<User>();

		try {
			ps = getConnection().prepareStatement("select * from user where roleId <> 1");
			rs = ps.executeQuery();

			logger.info("Loading list of users");

			while (rs.next()) {
				users.add(buildUser(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("Database connection problem");
		}
		return users;
	}

	public String getRole(int roleId) {
		if (roleId == 2)
			return "User";
		return "";
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

	private User buildUser(ResultSet rs) throws SQLException {
		return new User(rs.getInt("userId"), rs.getString("email"), rs.getString("password"), rs.getString("firstname"),
				rs.getString("middlename"), rs.getString("lastname"), rs.getDate("createddate"),
				rs.getDate("updateddate"), rs.getDate("DOB"), rs.getString("phone"), rs.getString("address"),
				rs.getString("city"), rs.getString("state"), rs.getString("zip"), rs.getString("country"),
				rs.getString("bloodgroup"), rs.getString("gender"), rs.getInt("roleid"), rs.getBoolean("active"),
				rs.getBoolean("isdonor"), rs.getBoolean("lifecertified"), rs.getBoolean("officialcertified"));
	}

	@Override
	public String getTitle() {
		return "Manage User";
	}
}
