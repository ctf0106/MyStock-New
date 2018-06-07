Ext.onReady(function(){
	Ext.QuickTips.init();
	
	new Ext.Viewport({  
		enableTabScroll:true,      
		layout:"border",  
		items:[{  
		title:"面板", 
		border:false,
		region:"north",  //设置位置  
		height:100,     
		 html: '<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">'+
		  '<tr><td width="254px" style="background:url(../../img/top_left.jpg)">&nbsp;</td>'+
		  '<td style="background:url(../../img/top_center.jpg)">&nbsp;</td>'+
		  '<td width="544px" style="background:url(../../img/top_right.jpg)"><div id="clock" class="clock"></div></td>'+
		  '</tr>'+
		'</table>',
   margins: '5 5 5 5'
		},  
		{  
		xtype:"tabpanel",  
		region:"center",//设置位置  
		html : '<iframe id="main" src="./jinhuo-old.jsp" width="100%" height="100%" scrolling="auto" frameborder="0" ></iframe>'
		}]  
		});  
});