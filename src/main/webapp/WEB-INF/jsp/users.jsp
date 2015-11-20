<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<body>
<table>
	<c:forEach items="${users}" var="user">
		<tr>
			<td><c:out value="${user.getName()}" /></td>
			<td><c:out value="${user.getAge()}" /></td>
		</tr>
	</c:forEach>
</table>
<br>
</body>
</html>