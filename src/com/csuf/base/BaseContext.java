package com.csuf.base;

import java.io.Serializable;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public abstract class BaseContext implements Serializable {

	private static final long serialVersionUID = 1L;
	private String error;

	protected Logger logger = Logger.getLogger(this.getClass());
	protected HttpServletRequest request;
	protected HttpServletResponse response;

	protected BaseContext(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
		init();
	}

	private void init() {
		setError();
	}

	protected ServletContext getServletContext() {
		return request.getSession().getServletContext();
	}

	protected Connection getConnection() {
		return (Connection) getServletContext().getAttribute("DBConnection");
	}

	protected HttpSession getSession() {
		return request.getSession();
	}

	public String getYesOrNo(boolean bool) {
		return bool ? "Yes" : "No";
	}

	public String getError() {
		return error;
	}

	public void setError() {
		error = (String) getSession().getAttribute("error");
		getSession().removeAttribute("error");
	}

	public boolean hasError() {
		return getError() != null;
	}

	public abstract String getTitle();
}
