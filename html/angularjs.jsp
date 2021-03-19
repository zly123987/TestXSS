<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表页面</title>
<script src="${pageContext.request.contextPath }/statics/js/angular.js"></script>
</head>
<body ng-app="myApp" ng-controller="angularController">

	<div style="border: 1px #red solid; width: 500px; height: 350px;"
		align="center">
		<div>
			<input type="text" ng-model="name">
		</div>
		<div>
			<input type="button" value="查 询" ng-click="goSelect()">
		</div>
		<table width="400px" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<th width="100px">编号</th>
				<th width="150px">名称</th>
				<th width="150px">时间</th>
			</tr>
			<tr ng-repeat="user in users">
				<td>{{ user.id }}</td>
				<td>{{ user.name }}</td>
				<td>{{ user.createDate }}</td>
			</tr>
		</table>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('angularController', function($scope, $http) {
			$scope.goSelect = function() {
				var name = $scope.name;
				$http({
					method : "post",
					url : "../angularJs.do",
					params : {
						name : name
					}
				}).success(function(data) {
					$scope.users = data.users;
				}).error(function() {
					alert("发生异常！！！");
				});
			}
		});
	</script>
</body>
</html>