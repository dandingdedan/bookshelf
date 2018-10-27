<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <table border="1" width="738">
    	<tr>
    		<th>num</th>
    		<th>pic</th>
    		<th>name</th>
    		<th>price</th>
    		<th>ISBN</th>
    		<th>coursecode</th>
    		<th>test</th>
    		<th>test</th>
    	</tr>
    	<c:forEach items="${page.records}" var="b" varStatus="vs">
    		<tr class="${vs.index%2==0?'odd':'even'}">
	    		<td>${vs.count}</td>
	    		<td>
	    			<img src="${pageContext.request.contextPath}/images/${b.picturePath}/${b.filename}" alt="${b.filename}" width="304" height="228"/>
	    		</td>
	    		<td>${b.name}</td>
	    		<td>${b.price}</td>
	    		<td>${b.ISBN}</td>
	    		<td>${b.courseCode}</td>
	    		<td>${b.picturePath}</td>
	    		<td>${b.filename}</td>
	    		<td>
	    		</td>
	    	</tr>
    	</c:forEach>
    	<tr>
    	
    	num${page.pageNum }page/total${page.totalPageNum }page&nbsp;&nbsp;
    			<a href="${pageContext.request.contextPath}${page.url}?num=${page.prePageNum}">last</a>
    			<a href="${pageContext.request.contextPath}${page.url}?num=${page.nextPageNum}">next</a>
    		</td>
    	</tr>
    </table>
</body>
</html>