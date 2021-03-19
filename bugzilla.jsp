<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bugzilla 测试页面</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
</head>
<body>
	<h1>Bugzilla 测试页面</h1>
	
	<p>
		<h3>单击此按钮进行 Bugzilla WebService API 的XMLRPC调用测试：</h3>
		<button onclick="checked()">超级简单的按钮</button>
	<p>
	
	<script type="text/javascript">
		function checked(){
			$.ajax({
				url 	:	 "http://localhost/bugzilla/rest.cgi/login?include_fields=login,password",
				type 	:	 "GET",
				dataType:	 "json",
				data	:	 {
		               "login" : "1611826890@qq.com",
		               "password" : "test123"
		             },
		        success :	 function (data){
		        	alert(data);
		        },error :	function(){
		        	alert("程序异常！");
		        }
			});
		}
	</script>
</body>
</html>