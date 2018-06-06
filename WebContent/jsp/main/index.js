$.ajax({
     type: "get",
     url: '${pageContext.request.contextPath}/jsp/main/user_getMenuBuf.do',
     data: {},
     dataType: "json",
     success: function(data){
    	 var result=data;
    	 for(var i=0;i<result.length;i++){
    		 var currentDataArray=result[i].children;
    		 var id=result[i].id;
    		 var leaf=result[i].leaf;
    		 var text=result[i].text;
    		 var url=result[i].url;
    		 alert(url);
    		 var html="";
    		 for(var j=0;j<currentDataArray.length;j++){
    			 html+"<div class='layui-row row-space'><div class='layui-col-xs12'><div class='layui-card'><div class='layui-card-header'>药品进货管理</div>";
             	html+"<div class='layui-card-body layadmin-takerates'>";
             	html+"<ul class='layui-row layui-col-space10 layui-this'>";
             	html+"<li class='layui-col-xs2'><a lay-href='home/homepage1'><i class='layui-icon layui-icon-console'></i><cite>进货入库</cite></a></li>";
             	html+"<li class='layui-col-xs2'><a lay-href='home/homepage1'><i class='layui-icon layui-icon-console'></i><cite>退货出库</cite></a></li>";
             	html+"<li class='layui-col-xs2'><a lay-href='home/homepage1'><i class='layui-icon layui-icon-search'></i><cite>进货单据查询</cite></a></li>";
             	html+"<li class='layui-col-xs2'><a lay-href='home/homepage1'><i class='layui-icon layui-icon-search'></i><cite>退货单据查询</cite></a></li>";
             	html+"<li class='layui-col-xs2'><a lay-href='home/homepage1'><i class='layui-icon layui-icon-search'></i><cite>当前库存查询</cite></a></li>";
             	html+"</ul>";
             	html+"</div></div></div></div>";		 
    		 }
    		$("#mainContainer").append(html);
    		console.log(html)
    	 }
    	 	
 	 }
 });