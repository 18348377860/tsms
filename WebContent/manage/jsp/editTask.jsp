<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务录入</title>
    <link href="static/css/base.css" rel="stylesheet">
    <link rel="stylesheet" href="../../static/easyui/uimaker/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../static/easyui/uimaker/icon.css">
    <link href="../../static/css/edit.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
    <div class="content">
      <form id="editTask" method="post">
        <div title="纳税人信息" data-options="closable:false" class="basic-info">
            <div class="column"><span class="current">纳税人基本信息</span></div>
            <table class="kv-table">
                <tbody>
                <tr>
                    <td class="kv-label">纳税人识别号</td>
                    <td class="kv-content"><input type="text" readonly name="payerCode" ></td>
                    <td class="kv-label">纳税人名称</td>
                    <td class="kv-content"></td>
                    <td class="kv-label">生产经营地址</td>
                    <td class="kv-content"></td>
                </tr>
                <tr>
                    <td class="kv-label">所属税务机关</td>
                    <td class="kv-content"></td>
                    <td class="kv-label">行业</td>
                    <td class="kv-content"></td>
                    <td class="kv-label">经营范围</td>
                    <td class="kv-content"></td>
                </tr>
                <tr>
                    <td class="kv-label">票种核定</td>
                    <td class="kv-content"></td>
                    <td class="kv-label">法人代表人</td>
                    <td class="kv-content"></td>
                    <td class="kv-label">法人身份证号</td>
                    <td class="kv-content"></td>
                </tr>
                <tr>
                    <td class="kv-label">主管财务</td>
                    <td class="kv-content"></td>
                    <td class="kv-label">财务身份证号</td>
                    <td class="kv-content"></td>
                </tr>
                <tr>
                    <td class="kv-label">录入日期</td>
                    <td class="kv-content"></td>
                    <td class="kv-label">录入人</td>
                    <td class="kv-content"></td>
                </tr>
                </tbody>
            </table>
            <div class="column"><span class="current">任务信息</span></div>
          
            <input type="hidden" name="id" >
            <input type="hidden" name="payerId" >
            <table class="kv-table">
                <tbody>
                <tr>
                    <td class="kv-label">任务名称</td>
                    <td class="kv-content"><input type="text" readonly name="taskName" ></td>
                    <td class="kv-label">下达部门</td>
                    <td class="kv-content">  
                     <select name="subOrganId" id="selectOrgan" > 
                     <option value="-1">请选择下达部门</option>
                      </select>
					</td>
                    <td class="kv-label">批准人</td>
                    <td class="kv-content">
                     <select name="approverId">
                     <option value="-1">请选择批准人</option>
	                    </select>
					</td>
                </tr>
              
                <tr>  
               		<td class="kv-label">执行人</td>
                  	<td class="kv-content">    	
	                    <select name="executeId">
	                    <option value="-1">请选择执行人</option>
	                    </select>
                 	</td>
                	<td class="kv-label">执行时间</td>
                    <td class="kv-content"><input type="text"  name="executeTime" 
                    ></td>
                    
                    <td class="kv-label">任务执行情况</td>
                    <td class="kv-content">
                        <textarea rows="3" name="taskState" style="width: 90%;"></textarea>
                    </td>
                  
                </tr>
                </tbody>
            </table> 
                 
        </div>
        <div class="btn-selection">
            <input type="submit" class="easyui-linkbutton submit-btn" id="saveBtn" data-options="selected:true" value="保存">
            <input type="reset" class="easyui-linkbutton reset-btn" id="reset" data-options="selected:true" value="重置">
        </div>
        </form>     
    </div>
</div>
  </body>
  <script type="text/javascript" src="../../static/jquery/jquery.min.js"></script>
<script type="text/javascript" src="../../static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../../static/easyui/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../../static/js/calendar.js"></script>
<script type="text/javascript">
    $("input[name=executeTime]").datebox({
        formatter: easyUIFormater,
        parser: easyUIparser
    });
    
</script>
</html>