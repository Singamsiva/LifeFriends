<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.csuf.context.UserTestimonialContext"%>
<%@page import="com.csuf.context.UserTestimonialContext.UserStoryUser"%>
<%
	UserTestimonialContext context = new UserTestimonialContext(request, response);
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
		
		<div class="wrapper wrapper-content">
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
						<h5>User Testimonial List</h5>
					</div>
					<div class="ibox-content">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Title</th>
									<th>Description</th>
									<th>UserId</th>
									<th>Email</th>
								</tr>
							</thead>
							<tbody>
								<%
									int count = 0;
									for (UserStoryUser userStoryUser : context.getUserStories()) {
								%>
								<tr>
									<td><%=++count%></td>
									<td><%=userStoryUser.getTitle()%></td>
									<td><%=userStoryUser.getDescription()%></td>
									<td><%=userStoryUser.getUserId()%></td>
									<td><%=userStoryUser.getUserEmail()%></td>
									<td><a href="UserTestimonial?userStoryId=<%=userStoryUser.getUserStoryId()%>" type="button" class="btn btn-sm <%=context.getActiveButtonCss(userStoryUser.isActive())%>">
											<i class="fa <%=context.getActiveIconCss(userStoryUser.isActive())%>"></i> <%=context.getActiveButtonName(userStoryUser.isActive())%>
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