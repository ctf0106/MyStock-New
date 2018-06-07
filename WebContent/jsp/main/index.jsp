<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.cxstock.biz.power.dto.UserDTO"%>
<%
  UserDTO userInfo=(UserDTO)session.getAttribute("userInfo");
%> 
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>库存管理系统</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css" />
  <script src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
   <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
   <script src="${pageContext.request.contextPath}/jsp/main/index.js"></script>
  <%-- <script type="text/javascript">
	     window.log_id="<%=userInfo.getUserid()%>";
	     window.log_name="<%=userInfo.getUsername()%>";
	</script> --%>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">库存管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
         <%=userInfo.getUsername()%>
        </a>
      </li>
    </ul>
  </div>
  

  
  <div class="layui-body body-Basics" style="left:0px;">
    <div class="layui-container" id="mainContainer">
   	     
  		
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
</body>
</html>