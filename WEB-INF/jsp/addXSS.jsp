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
		<table cellpadding="1" cellspacing="0" border="1">
			<tr>
				<td>请输入用户名：</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr align="center">
				<td colspan="2" ><input type="submit" value="保存"></td>
			</tr>
		</table>
	</form>
</body>
</html>