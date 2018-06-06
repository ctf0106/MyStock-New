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
    		 var html="";
    		 html+="<div class='layui-row row-space'><div class='layui-col-xs12'><div class='layui-card'><div class='layui-card-header'>"+text+"</div>";
    		 html+="<div class='layui-card-body layadmin-takerates'>";
			 html+="<ul class='layui-row layui-col-space10 layui-this'>";
    		 for(var j=0;j<currentDataArray.length;j++){
    			 html+="<li class='layui-col-xs2'><a href='"+currentDataArray[j].url+"'><i class='layui-icon layui-icon-search'></i><cite>"+currentDataArray[j].text+"</cite></a></li>";
    		 }
    		 html+="</ul></div></div></div></div>"
    		$("#mainContainer").append(html);
    	 }
    	 	
 	 }
 });