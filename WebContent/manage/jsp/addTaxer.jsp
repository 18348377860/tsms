<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>添加办税专员</title>
<link rel="stylesheet" type="text/css"
	href="../../static/css/base.css">
<link rel="stylesheet" type="text/css"
	href="../../static/easyui/uimaker/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../static/easyui/uimaker/icon.css">
<link rel="stylesheet" type="text/css"
	href="../../static/css/edit.css">
<script type="text/javascript"
	src="../../static/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="../../static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../../static/easyui/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"
	src="../../static/js/calendar.js"></script>
</head>

<body>
	<div class="container">
		<div class="content">
			<form id="addForm" method="post">
				<div title="办税专员信息" data-options="closable:false" class="basic-info">
					<div class="column">
						<span class="current">添加办税专员信息</span>
					</div>

					<table class="kv-table" id="addPayer">
						<tbody>
							<tr>
								<td class="kv-label">办税专员编号</td>
								<td class="kv-content"><input type="text" name="taxerCode"
									placeholder="办税专员编号"></td>
								<td class="kv-label">办税专员名称</td>
								<td class="kv-content"><input type="text" name="taxerName"
									placeholder="办税专员名称"></td>
							</tr>
							<tr>
								<td class="kv-label">手机号</td>
								<td class="kv-content"><input type="text" name="mobile"
									placeholder="手机号"></td>
								<td class="kv-label">地址</td>
								<td class="kv-content"><input type="text" name="address"
								placeholder="地址"</td>
							</tr>
							<tr>
								<td class="kv-label">性别</td>
								<td class="kv-content"><input type="radio" name="sex"
									 placeholder="男" checked value="1">
									男 <input type="radio" name="sex" 
									placeholder="女" value="0"> 女</td>
								<td class="kv-label">生日</td>
								<td class="kv-content"><input type="text" name="birthday"
									 placeholder="生日"></td>
							</tr>
							<tr>
								<td class="kv-label">Email</td>
								<td class="kv-content"><input type="text" 
								name="email" placeholder="Email"></td>
								<td class="kv-label">所属税务机关</td>
								<td class="kv-content"><select name="organId"
									id="selectOrgan">
										<option value="-1">请选择税务机关</option>
								</select></td>
							</tr>
						</tbody>

					</table>

				</div>
				<div class="btn-selection">
					<input type="submit" class="easyui-linkbutton submit-btn"
						id="savePayer" data-options="selected:true" value="保存"> <input
						type="reset" class="easyui-linkbutton reset-btn" id="reset"
						data-options="selected:true">
				</div>
			</form>
		</div>
	</div>
</body>
</html>