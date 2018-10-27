<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register page</title>
</head>
<body>
	<form action="RegisterServlet"  method="post"  style="padding-top:-700px;">
		your name:<input name="name" type="text"><br><br>
	    your password:<input name="pwd" type="text"><br><br>
	    your phonenumber<input name="phonenumber" type="text"><br><br>
	   <input type="submit"value="register">
	   <input type="reset"value="reset"><br>
	</form>
</body>
</html>