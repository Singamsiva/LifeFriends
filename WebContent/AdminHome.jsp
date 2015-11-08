<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.csuf.context.AdminHomeContext"%>
<%
	AdminHomeContext context = new AdminHomeContext(request, response);
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
			<div class="row">
				<div class="col-lg-6">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>Stacked bar chart</h5>
						</div>
						<div class="ibox-content">
							<div id="ct-chart3" class="ct-perfect-fourth"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<span class="label label-success pull-right">Today</span>
							<h5>Users</h5>
						</div>
						<div class="ibox-content">
							<h1 class="no-margins">120</h1>
							<small>Total</small>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ibox">
						<div class="ibox-content">
							<span class="label label-success pull-right">Today</span>
							<h5>Testimonials</h5>
							<h1 class="no-margins">4</h1>
							<small>Total Testimonials</small>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="includes/admin_footer.jsp"%>
		<%@include file="includes/admin_js.jsp"%>
	</div>
	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- Chartist -->
	-
	<script src="js/plugins/chartist/chartist.min.js"></script>
	<!-- Custom and plugin javascript -->
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>
	<script>
		// Stocked bar chart
		$(document).ready(
				function() {

					new Chartist.Bar('#ct-chart3', {
						labels : [ 'Q1', 'Q2', 'Q3', 'Q4' ],
						series : [ [ 800000, 1200000, 1400000, 1300000 ],
								[ 200000, 400000, 500000, 300000 ],
								[ 100000, 200000, 400000, 600000 ] ]
					}, {
						stackBars : true,
						axisY : {
							labelInterpolationFnc : function(value) {
								return (value / 1000) + 'k';
							}
						}
					}).on('draw', function(data) {
						if (data.type === 'bar') {
							data.element.attr({
								style : 'stroke-width: 30px'
							});
						}
					});
				});
	</script>
</body>
</html>