<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.csuf.util.User"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donor Home</title>
</head>
<body>
<% User user= (User) session.getAttribute("User"); %>
<% session.setAttribute("User",user); %>
<p>Hi <%user.getFirstname(); %>..!!!!</p><br><br>
<form action="DonorHomeServlet" method="post">
<input type="text" placeholder="Enter Blood group" name="search"> <input type="submit" value="Search">
</form>
<div>
<table width="700px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:teal">
                    <b>Blood Record</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>First Name</b></td>
                <td><b>Last Name</b></td>
                <td><b>Email</b></td>
                <td><b>Phone</b></td>
                <td><b>Address</b></td>
                 <td><b>City</b></td>
                <td><b>State</b></td>
                <td><b>Zip</b></td>
                <td><b>Gender</b></td>
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("BloodList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("BloodList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList BloodList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=BloodList.get(0)%></td>
                <td><%=BloodList.get(1)%></td>
                <td><%=BloodList.get(2)%></td>
                <td><%=BloodList.get(3)%></td>
                <td><%=BloodList.get(4)%></td>
                <td><%=BloodList.get(5)%></td>
                <td><%=BloodList.get(6)%></td>
                <td><%=BloodList.get(7)%></td>
                <td><%=BloodList.get(8)%></td>
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
        </table>
</div>
</body>
</html>