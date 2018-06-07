<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.cxstock.biz.power.dto.UserDTO"%>
<%
  UserDTO userInfo=(UserDTO)session.getAttribute("userInfo");
%>
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
