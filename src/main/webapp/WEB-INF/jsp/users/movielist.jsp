
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
	<style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body{font-family: 'Nanum Gothic', sans-serif;}
	</style>
	<title>MOVIE LIST</title>
</head>
<body>
<table>
    <h2> ${title} </h2>
	<c:forEach items="${movie}" var="movie">
		<tr>
			<td><c:out value="${movie.getM_id()}" /></td>
			<td><c:out value="${movie.getM_title()}" /></td>
		</tr>
	</c:forEach>
</table>
<br>
</body>
</html>