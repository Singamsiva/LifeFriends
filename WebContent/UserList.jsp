<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.csuf.util.User"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>User List</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body>
<% User user= (User) session.getAttribute("User"); %>
<% session.setAttribute("User",user); %>
<div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"></strong>
                             </span> <span class="text-muted text-xs block"><%=user.getFirstname()%><b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="${pageContext.request.contextPath}/Logout">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        LF+
                    </div>
                </li>
                <li class="active">
                    <a href="UserHome.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Profile</span></a>
                </li>
                <li>
                    <a href="UserList.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">User List</span> </a>
                </li>
                 <li>
                    <a href="EditProfile.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Edit Profile</span> </a>
                </li>
                <li>
                    <a href="Events.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Events</span> </a>
                </li>
                <li>
                    <a href="AdvancedSearch.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Advanced Search</span> </a>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" method="post" action="UserSearchServlet">
                        <div class="form-group">
                            <input type="text" placeholder="Search for Users..." class="form-control" name="search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to LifeFriends.</span>
                </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/Logout">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-9">
                    <h2>Search List</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="UserHome.jsp">Home</a>
                        </li>
                        <li class="active">
                            <strong>User List</strong>
                        </li>
                    </ol>
                </div>
            </div>
            
  <div class="wrapper wrapper-content animated fadeInRight">
           <div class="row">
           <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("BloodList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("BloodList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
                        ArrayList BloodList = (ArrayList) itr.next();
                 %>
            <div class="col-lg-3">
                <div class="contact-box center-version">
                    <a href="#">

                        <img alt="image" class="img-circle" src="img/a2.jpg">


                        <h3 class="m-b-xs"><strong><%=BloodList.get(0)%> <%=BloodList.get(1)%></strong></h3>

                        <div class="font-bold"><%=BloodList.get(8)%></div>
                        <address class="m-t-md">
                            <strong>Donor</strong><br>
                            <%=BloodList.get(4)%><br>
                            <%=BloodList.get(5)%>,<%=BloodList.get(6)%>,<%=BloodList.get(7)%><br>
                            <abbr title="Phone">P:</abbr> <%=BloodList.get(3)%>
                        </address>

                    </a>
                    <div class="contact-box-footer">
                        <div class="m-t-xs btn-group">
                            <a class="btn btn-xs btn-white"><i class="fa fa-phone"></i> Call </a>
                            <a class="btn btn-xs btn-white"><i class="fa fa-envelope"></i> Email</a>
                            <a class="btn btn-xs btn-white"><i class="fa fa-user-plus"></i> Follow</a>
                        </div>
                    </div>

                </div>
            </div>
            <%
                    }
                }
                if (count == 0) {
                	System.out.println("No record found");
            %>
          
            <%            }
            %>
		</div>
	</div>
        </div>
        
        <div class="footer">
            <div class="pull-right">
               
            </div>
            <div>
                <strong>Copyright</strong> LifeFriends &copy;2015
            </div>
        </div>

    </div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>


</body>

</html>
