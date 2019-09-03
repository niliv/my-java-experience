<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>首页</title>
  	<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
  	<script>
  		$(function(){
  			$("#register").click(function(){
  				$.ajax({
  					url:"${ctx}/user/register.do",
  					data:$("#myForm").serialize(),
  					success:function(res){
  						alert(res);
  					}
  				})
  			})
  		})
  	</script>
  </head>
  
  <body>
    <form action="${ctx}/user/login.do" method="POST" id="myForm">
    	用户名：<input type="text" name="username"><br> 
    	密码：<input type="password" name="password"><br>
    	<input type="submit" value="提交">
    	<input type="button" value="注册" id="register">
    </form>
  </body>
</html>
