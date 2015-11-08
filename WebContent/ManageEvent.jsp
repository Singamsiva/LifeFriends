<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.csuf.context.ManageEventContext"%>
<%@page import="com.csuf.bean.Event"%>
<%
	ManageEventContext context = new ManageEventContext(request, response);
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
						<h5>Event List</h5>
					</div>
					<div class="ibox-content">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Title</th>
									<th>Description</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th>Address</th>
									<th>City</th>
									<th>State</th>
									<th>ZIP</th>
									<th>Country</th>
								</tr>
							</thead>
							<tbody>
								<%
									int count = 0;
									for (Event event : context.getEvents()) {
								%>
								<tr>
									<td><%=++count%></td>
									<td><%=event.getTitle()%></td>
									<td><%=event.getDescription()%></td>
									<td><%=event.getStartDate()%></td>
									<td><%=event.getEndDate()%></td>
									<td><%=event.getAddress()%></td>
									<td><%=event.getCity()%></td>
									<td><%=event.getState()%></td>
									<td><%=event.getZip()%></td>
									<td><%=event.getCountry()%></td>
									<td><a href="ManageEvent?eventId=<%=event.getEventId()%>" type="button" class="btn btn-sm <%=context.getActiveButtonCss(event.isActive())%>">
											<i class="fa <%=context.getActiveIconCss(event.isActive())%>"></i> <%=context.getActiveButtonName(event.isActive())%>
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