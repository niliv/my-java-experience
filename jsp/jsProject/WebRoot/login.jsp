<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>登录</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
    <script type="text/javascript">
    	//判断登录页面是不是顶层页面，如果不是则将其设置为顶层页面（解决框架中出现了登录页面）
    	if(window !=top){
    		top.location.href=location.href;
    	}
    </script>
</head>
<body>
	<div class="bg"></div>
	<div class="container">
		<div class="line bouncein">
			<div class="xs6 xm4 xs3-move xm4-move">
				<div style="height: 150px;"></div>
				<div class="media media-y margin-big-bottom"></div>
				<form action="data" method="post">
				<input type="hidden" name="method" value="userLogin" />
					<div class="panel loginbox">
						<div class="text-center margin-big padding-big-top">
							<h1>后台管理中心</h1>
						</div>
						<c:choose>
							<c:when test="${sessionScope.flag=='loginFalse'}">
								<div style="text-align: center; color: red;">用户名或密码错误</div>
							</c:when>
							<c:when test="${sessionScope.flag=='regSuccess'}">
								<div style="text-align: center; color: red;">用户注册成功</div>
							</c:when>
						</c:choose>
						<%session.invalidate(); %>
						<div class="panel-body"
							style="padding: 30px; padding-bottom: 10px; padding-top: 10px;">
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="text" class="input input-big" name="uname"
										placeholder="登录账号" data-validate="required:请填写账号" /> <span
										class="icon icon-user margin-small"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="password" class="input input-big" name="pwd"
										placeholder="登录密码" data-validate="required:请填写密码" /> <span
										class="icon icon-key margin-small"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="field">
									<input type="text" class="input input-big" name="code"
										placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
									<img src="images/passcode.jpg" alt="" width="100" height="32"
										class="passcode" style="height: 43px; cursor: pointer;"
										onclick="this.src=this.src+'?'">

								</div>
							</div>
						</div>
						<div style="padding: 30px;">
							<input type="submit"
								class="button button-block bg-main text-big input-big"
								value="登录">
							<div style="font-size: 15px; text-align: right; padding: 5px 0;">
								<a href="reg.jsp">马上注册</a>
							</div>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>