<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="../../static/css/base.css">
<link rel="stylesheet" type="text/css"
	href="../../static/easyui/uimaker/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../static/easyui/uimaker/icon.css">
<link rel="stylesheet" type="text/css" href="../../static/css/edit.css">

</head>
<body>
	<div class="container">
		<div class="content">
			<form id="form" method="post">
				<div title="纳税人信息" data-options="closable:false" class="basic-info">
					<div class="column">
						<span class="current">修改密码</span>
					</div>

					<table class="kv-table">
						<tbody>
							<tr>
								<td class="kv-label">密码</td>
								<td class="kv-content"><input  type="password" id="oldPassword"
									name="oldPassword" placeholder="密码"></td>
							</tr>
							<tr>
								<td class="kv-label">新密码</td>
								<td class="kv-content"><input  type="password" id="newPassword"
									name="newPassword" placeholder="新密码"></td>
							</tr>
							<tr>
								<td class="kv-label">确认密码</td>
								<td class="kv-content"><input  type="password"
									id="validatePassword" name="validatePassword"
									placeholder="确认密码" ></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn-selection">
					<input type="submit" class="easyui-linkbutton submit-btn"
						id="modify_pwd" data-options="selected:true"> <input type="reset"
						 class="easyui-linkbutton reset-btn"
						data-options="selected:true">
				</div>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript" src="../../static/jquery/jquery.min.js"></script>
<script type="text/javascript" src="../../static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../static/easyui/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../../static/js/calendar.js"></script>
</html>