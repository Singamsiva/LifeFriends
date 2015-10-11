<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%
    String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>User Registration</title>
</head>
<body>
    <% if (message != null) {  %>
        <p><%= message %></p>
    <% } %>

    <form name="register" action="RegisterServlet" method="post">
        <input type="text" placeholder="First Name" name="firstname"><br>
        <input type="text" placeholder="Middle Name" name="middlename"><br>
        <input type="text" placeholder="Last Name" name="lastname"><br>
        <input type="email" placeholder="Email" name="email"><br>
        <input type="email" placeholder="Confirm Email" name="email1"><br>
        <input type="password" placeholder="Password" name="password"><br>
        <input type="text" placeholder="DOB: MM/DD/YYYY" name="dob"><br>
        <input type="text" placeholder="Phone" name="phone" id="phone"><br>
        <input type="text" placeholder="Address" name="address"><br>
        <input type="text" placeholder="City" name="city"><br>
        <input type="text" placeholder="State" name="state"><br>
        <input type="text" placeholder="Zip" name="zip"><br>
        <input type="text" placeholder="Country" name="country"><br>
        <select name="bloodgroup">
            <option selected disabled>Select your Blood group</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
        </select><br>
        <select name="gender">
            <option selected disabled>Select your gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
        </select><br>
        Are you a Donor : <input type="checkbox" name="donor"><br><br>
        <input type="submit" value="Register" onclick="validate();">
        <script type="text/javascript">
        function validate()
        {
        	var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
        	if (document.getElementById("phone").value.match(phoneno)) {
        		return true;
        	} else{
        		alert("Not a valid Phone Number");  
        	       return false;
        	}
        }
        
        </script>
    </form>

    <p>Already a user? <a href="UserLogin.html">Login here</a></p>
</body>
</html>