<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>库存管理系统</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css" />
  <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
   <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
   <style type="text/css">
   	.tableData{
   		text-align: center;
   		padding:30px 50px;
   	}
   	.demoTable{
   		text-align: left;
   	}
   </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include page="/jsp/common/head.jsp"/>
<div style="padding:10px 50px;"><a href="${pageContext.request.contextPath}/jsp/main/index.jsp" class="layui-btn">返回上一页</a></div>

 	<div class="tableData">
 		<form class="layui-form" onsubmit="return false;" >	
		  	<div class="layui-form-item">
			   <div class="layui-inline">
			      <label class="layui-form-label">药品类别:</label>
			      <div class="layui-input-inline">
			        <select name="quiz" lay-filter="selectFilter" id="selectType">
			         	 <option value="0">所有类别</option>
			        </select>
			      </div>
			    </div>
			    <div class="layui-inline">
			      <label class="layui-form-label" style="width:120px;">药品编号或名称:</label>
			      <div class="layui-input-inline">
			        <input type="text" name="search" id="search" autocomplete="off" class="layui-input">
			      </div>
			    </div>
			    <button class="layui-btn" data-type="reload" id="reload">搜索</button>
			  </div>
			 
			</form>
			
			 
		<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>
	</div>
	

  <jsp:include page="/jsp/common/foot.jsp"/>
</div>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //方法级渲染
  table.render({
    elem: '#LAY_table_user'
    ,url: '${pageContext.request.contextPath}/jsp/kucun/search_findKcByParams.do'
    ,cols: [[
       {field:'spid', title: '药品编号', width:80, sort: true, fixed: true}
      ,{field:'spname', title: '药品名称', width:120}
      ,{field:'lbname', title: '类型', width:120, sort: true}
      ,{field:'xinghao', title: '型号', width:120, sort: true}
      ,{field:'kcsl', title: '库存数量',width:120, sort: true}
      ,{field:'xsll', title: '销售总数', sort: true, width:120}
      ,{field:'scjj', title: '上次进价', sort: true, width:120}
      ,{field:'jhprice', title: '成本均价', width:120}
      ,{field:'scjj', title: '销售价', sort: true, width:135}
      ,{field:'kczj', title: '库存总值', sort: true, width:135}
      ,{field:'dw', title: '单位', sort: true, width:135}
      ,{field:'csname', title: '生产厂商', sort: true, width:135}
      ,{field:'bz', title: '备注', sort: true, width:135}
      
    ]]
    ,id: 'dataReload'
    ,page: true
    ,height: 800
  });
  
  var $ = layui.$, active = {
    reload: function(){
      var selectType = $('#selectType option:selected');
      var lbid=selectType.val();
      var lbname=selectType.text();
      var search=$('#search')
      
      //执行重载
      table.reload('dataReload', {
        page: {
          curr: 1 //重新从第 1 页开始
        }
        ,where: {
             "lbname": lbname,
            "search":search.val(),
        	  "lbid":lbid 
        }
      });
    }
  };
  
  $('#reload').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});

layui.use('form', function () {
	var form = layui.form;
//    var layedit = layui.layedit;
//    layedit.build('L_content'); //建立编辑器

	$.ajax({
		url : '${pageContext.request.contextPath}/jsp/kucun/splb_findSplbTree.do',
		type : 'POST',
		success : function(data) {
			var typeData = eval(data);
			$(typeData).each(
			function(index) {
				var type = typeData[index];
				var optionStr = "";
				optionStr += "<option value='" + type.id + "'>"
						+ type.text + "</option>";
				$("#selectType").append(optionStr);
				form.render('select');
			});
		},
		error : function(data) {
			alert('查找板块报错');
		}
	});
});






</script>
</body>
</html>