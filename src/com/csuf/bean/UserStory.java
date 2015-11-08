/**
 *
 */
package com.csuf.bean;

import java.io.Serializable;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public class UserStory implements Serializable {

	private static final long serialVersionUID = 1L;

	private int userStoryId;
	private String title;
	private String description;
	private int userId;
	private boolean active;

	/**
	 * @param userStoryId
	 * @param title
	 * @param description
	 * @param userId
	 * @param active
	 */
	public UserStory(int userStoryId, String title, String description, int userId, boolean active) {
		super();
		this.userStoryId = userStoryId;
		this.title = title;
		this.description = description;
		this.userId = userId;
		this.active = active;
	}

	/**
	 * @return the userStoryId
	 */
	public int getUserStoryId() {
		return userStoryId;
	}

	/**
	 * @param userStoryId
	 *            the userStoryId to set
	 */
	public void setUserStoryId(int userStoryId) {
		this.userStoryId = userStoryId;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * @return the active
	 */
	public boolean isActive() {
		return active;
	}

	/**
	 * @param active
	 *            the active to set
	 */
	public void setActive(boolean active) {
		this.active = active;
	}
}
