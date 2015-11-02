<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.csuf.util.User"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit Profile</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="pace-done body-small"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>


<div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg">
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="http://localhost:8080/LifeFriends/EditProfile.jsp#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"></strong>
                             </span> <span class="text-muted text-xs block">sa<b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="http://localhost:8080/LifeFriends/Logout">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        LF+
                    </div>
                </li>
                <li class="active">
                    <a href="http://localhost:8080/LifeFriends/UserHome.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Profile</span></a>
                </li>
                <li>
                    <a href="http://localhost:8080/LifeFriends/UserList.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">User List</span> </a>
                </li>
                <li>
                    <a href="http://localhost:8080/LifeFriends/EditProfile.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Edit Profile</span> </a>
                </li>
                <li>
                    <a href="http://localhost:8080/LifeFriends/Events.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Events</span> </a>
                </li>
                <li>
                    <a href="http://localhost:8080/LifeFriends/AdvancedSearch.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Advanced Search</span> </a>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg" style="min-height: 969px;">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="http://localhost:8080/LifeFriends/EditProfile.jsp#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" method="post" action="http://localhost:8080/LifeFriends/UserSearchServlet">
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
                        <a href="http://localhost:8080/LifeFriends/Logout">
                            <i class="fa fa-sign-out"></i> Logout
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-9">
                    <h2>Edit Profile</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="http://localhost:8080/LifeFriends/UserHome.jsp">Home</a>
                        </li>
                        <li class="active">
                            <strong>Edit</strong>
                        </li>
                    </ol>
                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Profile</h5>
                        
                    </div>
                    <div class="ibox-content">

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                        <label for="email">Change Email Address</label>
                                        <input id="email" type="email" class="form-control" placeholder="New Email ...">
                                    </div>
								<div class="form-group">
                                        <label for="email1">Re-enter Email</label>
                                        <input id="email1" type="email" class="form-control" placeholder="Re-enter New Email ...">
                                    </div>
                                     <div class="form-group">
                                        <label for="password">Change Password</label>
                                        <input id="password" type="password" class="form-control" placeholder="New Password ...">
                                    </div>
								<div class="form-group">
                                        <label for="password1">Re-enter Password</label>
                                        <input id="password1" type="password" class="form-control" placeholder="Re-enter New Password ...">
                                    </div>
                                <div class="form-group">
                                        <label for="message">About Me</label>
                                        <textarea class="form-control" id="message" rows="3" placeholder="Enter about yourself ..."></textarea>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group" id="toastTypeGroup">
                                        <label>Do you want to be a Donor</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="donor" value="Yes" checked="">Yes
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="donor" value="No">No
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group" id="positionGroup">
                                        <label>Blood Group</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-top-right" checked="">O+
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-bottom-right">O-
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-bottom-left">A+
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-top-left">A-
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-top-full-width">B+
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-bottom-full-width">B-
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-top-center">AB+
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="bloodgroup" value="toast-bottom-center">AB-
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="Address">Address</label>
                                    <input id="Address" type="text" placeholder="Address" class="form-control" value="">
                                </div>
                                <div class="form-group">

                                    <label for="City">City</label>
                                    <input id="City" type="text" placeholder="City" class="form-control" value="">
                                </div>
                                <div class="form-group">

                                    <label for="State">State</label>
                                    <input id="State" type="text" placeholder="State" class="form-control" value="">
                                </div>
                                <div class="form-group">

                                    <label for="Country">Country</label>
                                    <input id="Country" type="text" placeholder="Country" class="form-control" value="">
                                </div>
								<div class="form-group">
                                        <label for="Zip">Zip</label>
                                        <input id="Zip" type="text" placeholder="Zip" class="form-control" value="">
                                </div>
                            </div>
							<div class="col-md-3">
                        <div class="ibox-content">
                            <div class="file-manager">
                                <h5>Upload Profile Picture</h5>
								<div class="img-preview img-preview-sm">
								<img src="img/p3.jpg" style="min-width: 0px !important; min-height: 0px !important; max-width: none !important; max-height: none !important; width: 250px; height: 167px; margin-left: -25px; margin-top: -22px;"></div>
								<h4>Preview image</h4>
                                <div class="hr-line-dashed"></div>
                                <button class="btn btn-primary btn-block">Upload Image</button>
                                <div class="hr-line-dashed"></div>
                                <div class="clearfix"></div>
                        </div>
                    </div>
					</div>
                        </div>
                        <form action="EditServlet" method="post">
                        <div class="row">
                            <div class="col-lg-12">
                            <input type="submit" class="btn btn-primary" id="showtoast" value="Save Changes"></input>
                            </div>
                        </div>
						</form>
                    </div>
                </div>
            </div>
            </div>
        </div>
            
        <div class="footer">
            <div class="pull-right">
               
            </div>
            <div>
                <strong>Copyright</strong> LifeFriends ©2015
            </div>
        </div>

    </div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.metisMenu.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/pace.min.js"></script>





</body></html>