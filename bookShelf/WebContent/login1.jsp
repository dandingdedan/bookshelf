<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
</head>
<body>
<body>
 	<form action="LoginServlet"  method="post"  style="padding-top:-700px;">
		account:<input type="text" name="name"value=""><br><br>
 		password:<input type="password" name="pwd"value=""><br><br>
	                <input type="submit"value="login"name="login"><input type="reset"value="reset"><br>
	 </form>
	 <form action="register.jsp">
	 	<input type="submit"value="register">
         </form>
</body>
</body>
</html>