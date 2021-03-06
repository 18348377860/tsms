<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务查询</title>
<link href="static/css/base.css" rel="stylesheet">
<link rel="stylesheet"
	href="../../static/easyui/uimaker/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../static/easyui/uimaker/icon.css">
<style type="text/css">
.a {
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container">
		<table id="dg">
		</table>
		<div id="tb" style="padding: 0 30px;">
			<form id="conForm">
				<div class="conditions">
					<span class="con-span">纳税人识别号: </span><input type="text"
						name="payerCode"
						style="width: 166px; height: 35px; line-height: 35px;"> <span
						class="con-span">纳税人名称: </span><input type="text" name="payerName"
						style="width: 166px; height: 35px; line-height: 35px;"> <span
						class="con-span">税务机关: </span> <select name="subOrganId"
						style="width: 166px; height: 35px; line-height: 35px;">
						<option value="-1">请选择税务机关</option>
					</select> <span class="con-span">行业: </span> <select name="industryId"
						style="width: 166px; height: 35px; line-height: 35px;">
						<option value="-1">请选择行业</option>
					</select>
				</div>
				<div class="conditions">
					<span class="con-span">任务开始时间(执行): </span><input
						class="easyui-datebox" type="text" name="startDate"
						style="width: 166px; height: 35px; line-height: 35px;"> <span
						class="con-span">任务结束时间(执行): </span><input class="easyui-datebox"
						type="text" name="endDate"
						style="width: 166px; height: 35px; line-height: 35px;"> <a
						href="javascript:void(0);" class="easyui-linkbutton"
						iconCls="icon-search" id="searchTask" data-options="selected:true">查询</a>
					<a href="javascript:void(0);" class="easyui-linkbutton"
						id="resetTask" iconCls="icon-reload">重置</a> 
				</div>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="../../static/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="../../static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../../static/easyui/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	/**
	 *打开在父窗口中打开window
	 */
	function openTopWindow(options) {
		options = !options ? {} : options;
		options.width = !options.width ? 500 : options.width;
		options.height = !options.height ? 400 : options.height;
		options.title = !options.title ? "" : options.title;
		parent.$("#iframe").attr("src", options.url);
		parent.$("#topWindow").window({
			title : options.title,
			width : options.width,
			height : options.height,
			modal : true,
			resizable : true,
			collapsible : false,
		});
		
	}
</script>
</html>