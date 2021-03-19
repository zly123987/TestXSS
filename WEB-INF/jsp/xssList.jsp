<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表页面</title>
</head>
<body>
	<table cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>编号</th>
			<th>名称</th>
			<th>时间</th>
		</tr>
		<c:if test="${xsslist != null }">
			<c:forEach var="x" items="${xsslist }">
				<tr>
					<td>${x.id }</td>
					<td>${x.name }</td>
					<td>${x.createDate }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</body>
</html>