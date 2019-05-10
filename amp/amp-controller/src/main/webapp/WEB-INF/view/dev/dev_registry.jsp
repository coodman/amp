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
		<script type="text/javascript">
			function registryDev() {
				// 将表单组件元素进行序列化
				var formData = $("#saveForm").serialize();
				$.ajax({
					url: "devRegistry",
					type: "post",
					data: formData,
					dataType: "json",
					success: function(data) {
						// 获取标志位的结果是什么
						var flag = data.result;
						alert(flag);
						alert(typeof flag);
						if (flag == true) {
							// 标志着注册成功
							// 将开发者账号显示到模态框中
							var devNo = data.devNo;
							$("#devNo").html(devNo);
							// 给按钮设置具体的操作
							$("#modalBtn").click(function() {
								location.href = "devLogin";
							});
							// 开启模态框
							$("#myModal").modal({
								keyboard: false
							});
						} else {
							$("#devNo").html("注册失败，请重新注册");
							// 给按钮设置具体的操作
							$("#modalBtn").click(function() {
								location.href = "devRegistry";
							});
							// 开启模态框
							$("#myModal").modal({
								keyboard: false
							});
						}
					}
				});
			}
		</script>
	</head>
	<body>
		<form id="saveForm">
			<table>
				<tr>
					<td align="right">开发者姓名：</td>
					<td>
						<input type="text" id="devName" name="devName" placeholder="请填写您的真实姓名"/>
					</td>
				</tr>
				<tr>
					<td align="right">登录密码：</td>
					<td>
						<input type="password" id="password" name="password" placeholder="请填写您的登录密码"/>
					</td>
				</tr>
				<tr>
					<td align="right">联系电话：</td>
					<td>
						<input type="text" id="cellphone" name="cellphone" placeholder="请填写您的联系电话"/>
					</td>
				</tr>
				<tr>
					<td align="right">邮箱地址：</td>
					<td>
						<input type="text" id="email" name="email" placeholder="请填写您的邮箱地址"/>
					</td>
				</tr>
				<tr>
					<td align="right">个人简介：</td>
					<td>
						<textarea rows="" cols="" id="devInfo" name="devInfo"></textarea>
					</td>
				</tr>
				<tr>
					<td align="right" colspan="2">
						<button type="button" onclick="registryDev();" class="btn btn-success btn-sm">
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;
							注册
						</button>
						<a href="devLogin" class="btn btn-link">
							已经有账号，点击登录
						</a>
					</td>
				</tr>
			</table>
		</form>
		
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                <h4 class="modal-title" id="myModalLabel">你的开发者编号：</h4>
		            </div>
		            <div class="modal-body" style="text-align: center;">
		            	<h1 id="devNo"></h1>
		            </div>
		            <div class="modal-footer">
		                <button type="button" id="modalBtn" class="btn btn-default">关闭</button>
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>