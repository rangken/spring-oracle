<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<td><c:out value="${reserve.getTitle()}" /></td>
			<td><c:out value="${reserve.getDate()}" /></td>
			<td><c:out value="${reserve.getTime()}" /></td>
			<td><c:out value="${reserve.getTheater()}" /></td>
		</tr>
	</c:forEach>
</table>
<br>
</body>
</html>