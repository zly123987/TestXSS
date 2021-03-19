<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test XSS</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/utilits.js"></script>
</head>
<%  
    String param = request.getParameter("param");  
    System.out.println("original " + param);  
    //http://localhost:8080/TestXSS/reflectedXSS.html?param=value';alert(document.cookie)//
    //http://localhost:8080/TestXSS/list.html/?xss=a&type=value';alert(document.cookie)//
    
%>
<%=param %>
<br><br>
<input type="button" onclick="check()" value="获取Cookie">
<script>  
    var scriptVar='<%=param%>';  
    writelnToDom("original: " + scriptVar);   
    
    function check(){
    	alert(document.cookie);
    }
</script>
<body>
</body>
</html>
