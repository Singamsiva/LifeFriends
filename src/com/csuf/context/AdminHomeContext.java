package com.csuf.context;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csuf.base.BaseContext;

/**
 * @author Divya
 * @date 31-Oct-2015
 */
public class AdminHomeContext extends BaseContext {

	private static final long serialVersionUID = 1L;

	public AdminHomeContext(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	@Override
	public String getTitle() {
		return "Admin Home";
	}
}
