<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form enctype="multipart/form-data" action="AddBookServlet" method="post">
    	<table border="1" width="438">
    		<tr>
    			<td>name</td>
    			<td>
    				<input type="text" name="name" id="name" value=""/>
    			</td>
    		</tr>
    		<tr>
    			<td>price</td>
    			<td>
    				<input type="text" name="price" value=""/>
    			</td>
    		</tr>
    		<tr>
    			<td>ISBN</td>
    			<td>
    				<input type="text" name="ISBN" value=""/>
    			</td>
    		</tr>
    		<tr>
    			<td>coursecode</td>
    			<td>
    				<input type="text" name="courseCode" value=""/>
    			</td>
    		</tr>
    		<tr>
    			<td>picture</td>
    			<td>
    				<input type="file" name="file"/>
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2">
    				<input type="submit" value="upload"/>
    			</td>
    		</tr>
    	</table>
    </form>
</body>
</html>