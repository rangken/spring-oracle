<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
	<style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body{font-family: 'Nanum Gothic', sans-serif;}
	</style>
</head>
<body>
<table>
    <h2> ${title} </h2>
	<c:forEach items="${reserves}" var="reserve">
	    <tr>
	    <td colspan="4">예매 내역</td>
	    </tr>
		<tr>
			<td><c:out value="${reserve.movieDate}" /></td>
			<td><c:out value="${reserve.theater}" /></td>
			<td><c:out value="${reserve.movie.title}" /></td>
			<td><c:out value="${reserve.movie.imgPath}" /></td>
		</tr>
	</c:forEach>
</table>
<br>
</body>
</html>