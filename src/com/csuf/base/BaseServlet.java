package com.csuf.base;

import java.sql.Connection;

import javax.servlet.http.HttpServlet;

import org.apache.log4j.Logger;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public class BaseServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected Logger logger = Logger.getLogger(this.getClass());

	protected BaseServlet() {
		// no-op
	}

	protected Connection getConnection() {
		return (Connection) getServletContext().getAttribute("DBConnection");
	}
}
