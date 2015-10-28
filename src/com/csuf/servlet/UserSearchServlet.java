package com.csuf.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.csuf.util.User;

@WebServlet(name = "UserSearchServlet", urlPatterns = { "/UserSearchServlet" })
public class UserSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static Logger logger = Logger.getLogger(UserSearchServlet.class);
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = request.getParameter("search");
		HttpSession session = request.getSession();
		User user= (User) session.getAttribute("User");
		String zip=user.getZip();
		int zip1=Integer.parseInt(zip)-100;
		System.out.println(zip1);
		int zip2=Integer.parseInt(zip)+100;
		System.out.println(zip2);
		
		
		String errorMsg = null;
		if(search == null || search.equals("")){
			errorMsg ="Enter a search term";
		}
		
		if(errorMsg != null){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/UserHome.jsp");
			//request.setAttribute("Message", "Fields Can't be Null or Empty");
			PrintWriter out= response.getWriter();
			out.println("<font color=red>"+errorMsg+"</font>");
			rd.include(request, response);
		}else{
		
		Connection con = (Connection) getServletContext().getAttribute("DBConnection");
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ArrayList<String> al = null;
			ArrayList<ArrayList<String>> search_list = new ArrayList<ArrayList<String>>();
			ps = con.prepareStatement("select * from user where zip between ? and ?");
			ps.setInt(1, zip1);
			ps.setInt(2, zip2);
			rs = ps.executeQuery();
			
			while (rs.next()) {
                al = new ArrayList<String>();
 
//                out.println(rs.getString(1));
//                out.println(rs.getString(2));
//                out.println(rs.getString(3));
//                out.println(rs.getString(4));
                al.add(rs.getString("firstname"));
                al.add(rs.getString("lastname"));
                al.add(rs.getString("email"));
                al.add(rs.getString("phone"));
                al.add(rs.getString("address"));
                al.add(rs.getString("city"));
                al.add(rs.getString("state"));
                al.add(rs.getString("zip"));
                al.add(rs.getString("gender"));
 
                System.out.println("al :: " + al);
                search_list.add(al);
            }
			request.setAttribute("BloodList", search_list);
            RequestDispatcher view = request.getRequestDispatcher("/UserList.jsp");
            view.forward(request, response);
            con.close();
            System.out.println("Disconnected!");
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("Database connection problem");
			throw new ServletException("DB Connection problem.");
		}finally{
			try {
				rs.close();
				ps.close();
			} catch (SQLException e) {
				logger.error("SQLException in closing PreparedStatement or ResultSet");;
			}
			
		}
		}
	}

}
