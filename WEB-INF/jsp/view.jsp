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
	<form action="addXSS" method="post">
		<table cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td>用户编号：</td>
				<td>${table.id }</td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td>${table.name }</td>
			</tr>
			<tr>
				<td>创建日期：</td>
				<td>${table.createDate }</td>
			</tr>
		</table>
	</form>
</body>
</html>