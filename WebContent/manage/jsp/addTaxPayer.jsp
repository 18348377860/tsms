<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>添加纳税人</title>
<link rel="stylesheet" type="text/css" href="../../static/css/base.css">
<link rel="stylesheet" type="text/css"
	href="../../static/easyui/uimaker/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../static/easyui/uimaker/icon.css">
<link rel="stylesheet" type="text/css" href="../../static/css/edit.css">
<link rel="stylesheet" type="text/css"
	href="../../static/webuploader/webuploader.css">
</head>
<body>
	<div class="container">
		<div class="content">
			<form id="addForm" method="post">
				<div title="纳税人信息" data-options="closable:false" class="basic-info">
					<div class="column">
						<span class="current">添加纳税人信息</span>
					</div>

					<table class="kv-table" id="addPayer">
						<tbody>
							<tr>
								<td class="kv-label">纳税人识别号</td>
								<td class="kv-content"><input type="text" name="payerCode"
									placeholder="纳税人识别号"></td>
								<td class="kv-label">纳税人名称</td>
								<td class="kv-content"><input type="text" name="payerName"
									placeholder="纳税人名称"></td>
							</tr>
							<tr>
								<td class="kv-label">生产经营地址</td>
								<td class="kv-content"><input type="text" name="bizAddress"
									placeholder="生产经营地址"></td>
								<td class="kv-label">经营地电话</td>
								<td class="kv-content"><input type="text"
									name="bizAddressPhone" placeholder="生产经营地电话"></td>
							</tr>
							<tr>
								<td class="kv-label">所属税务机关</td>
								<td class="kv-content"><select name="taxOrganId"
									id="selectOrgan" >
										<option value="-1">请选择税务机关</option>
								</select></td>
								<td class="kv-label">行业</td>
								<td class="kv-content"><select name="industryId"
									id="selectIndustry" >
										<option value="-1">请选择行业</option>
								</select></td>
							</tr>
							<tr>
								<td class="kv-label">生产经营范围</td>
								<td class="kv-content"><input type="text" name="bizScope"
									placeholder="生产经营范围"></td>
								<td class="kv-label">票种核定</td>
								<td class="kv-content"><select
									name="invoiceType">
										<option value="-1">请选择发票种类</option>
										<option value="1">增值税普通发票</option>
										<option value="2">增值税专用发票</option>
								</select></td>
							</tr>
							<tr>
								<td class="kv-label">法人代表人</td>
								<td class="kv-content"><input type="text"
									name="legalPerson" placeholder="法人姓名"></td>
								<td class="kv-label">法人身份证号</td>
								<td class="kv-content"><input type="text"
									name="legalIdCard" placeholder="法人代表身份证号码"></td>
							</tr>
							<tr>
								<td class="kv-label">主管财务</td>
								<td class="kv-content"><input type="text" name="finaceName"
									placeholder="主管财务"></td>
								<td class="kv-label">财务身份证号</td>
								<td class="kv-content"><input type="text"
									name="finaceIdCard" placeholder="财务身份证号"></td>
							</tr>

							<tr>
								<td class="kv-label">法人身份证照片</td>
								<td class="kv-content"><img id="chooseLegalIdCardPreview"
									alt="" src="" />
									<div id="chooseLegalIdCard">选择文件</div> <input type="hidden"
									name="legalIdCardImageURL" id="legalIdCardUrl" /></td>
								<td class="kv-label">财务身份证照片</td>
								<td class="kv-content"><img id="chooseFinaceIdCardPreview"
									alt="" src="" />
									<div id="chooseFinaceIdCard">选择文件</div> <input type="hidden"
									name="finaceIdCardImageURL" id="finaceIdCardUrl" /></td>
							</tr>
							<tr>
								<td class="kv-label">录入人员</td>
								<td class="kv-content"><label></label>
								</td>
								<td class="kv-label">当前时间</td>
								<td class="kv-content">
								</td>
							</tr>
						</tbody>

					</table>
				</div>
				<div class="btn-selection">
					<input type="submit" class="easyui-linkbutton submit-btn"
						id="savePayer" data-options="selected:true"> <input
						type="reset" class="easyui-linkbutton reset-btn" id="reset"
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