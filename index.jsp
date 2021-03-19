<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<%-- <form id="xss" action="${pageContext.request.contextPath }/list.html" method="post">
		<input type="submit" value="查询所有">
	</form> --%>
	
	SQL注入：<br><br>
	<form id="xss" action="${pageContext.request.contextPath }/sqlInjection.html" method="post">
		name ： <input type="text" name="name">
		<input type="submit" value="查询">
	</form>
	<br><hr>
	<br><br>
	<form action="${pageContext.request.contextPath }/list.html" method="get">
		<input type="hidden" name="type" value="1">
	    XSS 攻击代码：<input type="text" name="xss"><br><br>
		<input type="submit">
	</form>
	
	
	
	<!--
	<input type="button" value="XSS 攻击" onclick="check()">
	<script type="text/javascript">
		function check(){
			$.ajax({
				type  :  "POST",
				url   :  "list.html",
				data  :  "",
				dataType  :  "json",
				success   : function(data){
					var html = "";
					for (var i = 0; i < data.length; i++) {
						html += "<td>" + data[i].id + "</td>"
						     + "<td>" + data[i].name + "/<td>"
						     + "<td>" + data[1].createDate + "</td>";
					}
					alert(html);
					$("#xss").html(html);
				
				},
				error	 : function(){
					alert("发生异常！");
				}
			});
		}
	</script> -->
</body>
</html>