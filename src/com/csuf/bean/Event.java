/**
 *
 */
package com.csuf.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public class Event implements Serializable {
	private static final long serialVersionUID = 1L;

	private int eventId;
	private String type;
	private String title;
	private String description;
	private Date startDate;
	private Date endDate;
	private String address;
	private String city;
	private String state;
	private String zip;
	private String country;
	private Date createdDate;
	private boolean active;

	/**
	 * @param eventId
	 * @param type
	 * @param title
	 * @param description
	 * @param startDate
	 * @param endDate
	 * @param address
	 * @param city
	 * @param state
	 * @param zip
	 * @param country
	 * @param createdOn
	 * @param active
	 */
	public Event(int eventId, String type, String title, String description, Date startDate, Date endDate,
			String address, String city, String state, String zip, String country, Date createdOn, boolean active) {
		super();
		this.eventId = eventId;
		this.type = type;
		this.title = title;
		this.description = description;
		this.startDate = startDate;
		this.endDate = endDate;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.country = country;
		this.createdDate = createdOn;
		this.active = active;
	}

	/**
	 * @return the eventId
	 */
	public int getEventId() {
		return eventId;
	}

	/**
	 * @param eventId
	 *            the eventId to set
	 */
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(String type) {
		this.type = type;
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
	 * @return the startDate
	 */
	public Date getStartDate() {
		return startDate;
	}

	/**
	 * @param startDate
	 *            the startDate to set
	 */
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	/**
	 * @return the endDate
	 */
	public Date getEndDate() {
		return endDate;
	}

	/**
	 * @param endDate
	 *            the endDate to set
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city
	 *            the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the zip
	 */
	public String getZip() {
		return zip;
	}

	/**
	 * @param zip
	 *            the zip to set
	 */
	public void setZip(String zip) {
		this.zip = zip;
	}

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country
	 *            the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * @return the createdOn
	 */
	public Date getCreatedDate() {
		return createdDate;
	}

	/**
	 * @param createdOn
	 *            the createdOn to set
	 */
	public void setCreatedDate(Date createdOn) {
		this.createdDate = createdOn;
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