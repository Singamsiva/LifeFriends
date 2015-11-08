<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.csuf.context.ManageUserContext"%>
<%@page import="com.csuf.bean.User"%>
<%
	ManageUserContext context = new ManageUserContext(request, response);
%>
<!DOCTYPE html>
<html>
<head>
<title><%=context.getTitle()%></title>
<%@include file="includes/admin_css.jsp"%>
</head>
<body>
	<div id="wrapper">
		<%@include file="includes/admin_nav_menu.jsp"%>
		<%@include file="includes/admin_header.jsp"%>
		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-9">
				<h2><%=context.getTitle()%></h2>
			</div>
		</div>
		<div class="row wrapper wrapper-content">
			<div class="col-lg-12">
				<%
					if (context.hasError()) {
				%>
				<div class="alert alert-danger alert-dismissable">
					<button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
					<%= context.getError() %>
				</div>
				<%
					}
				%>			
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>User List</h5>
					</div>
					<div class="ibox-content">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Firstname</th>
									<th>Lastname</th>
									<th>Email</th>
									<th>Role</th>
									<th>Donor</th>
									<th>Created On</th>
									<th>Active</th>
								</tr>
							</thead>
							<tbody>
								<%
									int count = 0;
									for (User user : context.getUsers()) {
								%>
								<tr>
									<td><%=++count%></td>
									<td><%=user.getFirstname()%></td>
									<td><%=user.getLastname()%></td>
									<td><%=user.getEmail()%></td>
									<td><%=context.getRole(user.getRoleid())%></td>
									<td><%=context.getYesOrNo(user.isDonor())%></td>
									<td><%=user.getCreateddate()%></td>
									<td><a href="ManageUser?userId=<%=user.getUserId()%>" type="button" class="btn btn-sm <%=context.getActiveButtonCss(user.isActive())%>">
											<i class="fa <%=context.getActiveIconCss(user.isActive())%>"></i> <%=context.getActiveButtonName(user.isActive())%>
										</a></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<%@include file="includes/admin_footer.jsp"%>
		<%@include file="includes/admin_js.jsp"%>
	</div>
</body>
</html>