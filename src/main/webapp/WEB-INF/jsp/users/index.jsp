<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<body>
<table>
    <h2> ${title} </h2>
	<c:forEach items="${users}" var="user">
		<tr>
			<td><c:out value="${user.getName()}" /></td>
			<td><c:out value="${user.getEmail()}" /></td>
			<td><c:out value="${user.getPassword()}" /></td>
		</tr>
	</c:forEach>
</table>
<br>
</body>
</html>