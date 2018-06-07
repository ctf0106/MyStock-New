$.ajax({
     type: "get",
     url: '${pageContext.request.contextPath}/jsp/main/user_getMenuBuf.do',
     data: {},
     dataType: "json",
     success: function(data){
    	 var result=data;
    	 result.sort(up);
    	 for(var i=0;i<result.length;i++){
    		 var currentDataArray=result[i].children;
    		 var id=result[i].id;
    		 var leaf=result[i].leaf;
    		 var text=result[i].text;
    		 var url=result[i].url;
    		 var html="";
    			 html+="<div class='layui-card-header'>"+text+"</div>";
    			 html+="<div class='layui-row row-space' style='text-align: center;'>";
    			 for(var j=0;j<currentDataArray.length;j++){
    			 html+="<div class='layui-col-xs2'>";
    			 html+="<a href='"+currentDataArray[j].url+"'>"
    			 html+="<div class='layadmin-homepage-pad-ver'>";
    			 /*html+="<img class='layadmin-homepage-pad-img' src='../../img/menu/"+currentDataArray[j].iconCls+".gif' width='96' height='96'>";*/
    			 html+="<img class='layadmin-homepage-pad-img' src='../../static/images/ruku.png' width='96' height='96'>";
    			 html+="</div><h4 class='layadmin-homepage-font'>"+currentDataArray[j].text+"</h4>";
    			 html+="</a>"
    			 html+="</div>" ;
    			 }
    			 html+="</div>";
    			
    		$("#mainContainer").append(html);
    	 }
    	 	
 	 }
 });

function up(x,y){
       return x.id-y.id
   }