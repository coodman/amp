<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="../static/css/font-awesome.min.css">
		<script type="text/javascript" src="../static/js/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
	</head>
	<body>
		<h1>APP开发者管理平台——登录</h1>
		<form action="devLogin" method="post">
			<table>
				<tr>
					<td align="right">登录名：</td>
					<td>
						<input type="text" id="devNo" name="devNo" placeholder="请填写您的开发者编号"/>
					</td>
				</tr>
				<tr>
					<td align="right">登录密码：</td>
					<td>
						<input type="password" id="password" name="password" placeholder="请填写您的登录密码"/>
					</td>
				</tr>
				<tr>
					<td align="right" colspan="2">
						<button type="submit" class="btn btn-success btn-sm">
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;
							登录
						</button>
						<a href="devRegistry" class="btn btn-primary btn-sm">
							<span class="glyphicon glyphicon-plus"></span>&nbsp;
							注册
						</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>