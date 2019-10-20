<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/login.css" />
<!-- style="color:red;font-size:30px;" <link rel="stylesheet" href="css/bootstrap.css"/>  -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<title>后台管理登录</title>
<style type="text/css">
/*提示框*/
.alert{padding:15px;margin-bottom:20px;border:1px solid transparent;border-radius:4px}
.alert{margin-top:0;color:inherit}.alert .alert-link{font-weight:700}
.alert-danger{color:#a94442;background-color:#f2dede;border-color:#ebccd1}

</style>
</head>

<body>
<div id="container">
	<div class="regsiter" >
		<c:if test="${!empty failMsg }">
				<div class="alert alert-danger" >${failMsg }</div>
		</c:if>
	</div>
    <div id="bd">
    	<div id="main">
        	<div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <form class="form-horizontal" action="${pageContext.request.contextPath }/myAdmin/adminLogin" method="post">
                <div class="input username form-group" id="adminname" >
                    <label for="adminName">用户名</label>
                    <span></span>
                    <input type="text" id="adminName" name="adminname" required="required"/>
                </div>
                <div class="input psw form-group" id="psw" >
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="password" name="password" required="required"/>
                </div>
                <div class="input validate form-group" id="validate">
                    <label for="valiDate">验证码</label>
                    <input type="text" id="valiDate" name="checkword" required="required"/>
                    <div class="value">X3D5</div>
                </div>
                <div class="styleArea">
                    <div class="styleWrap">
                        <select name="style">
                            <option value="默认风格">默认风格</option>
                            <option value="红色风格">红色风格</option>
                            <option value="绿色风格">绿色风格</option>
                        </select>
                    </div>
                </div>
                <div id="btn" class="loginButton">
                    <input type="submit"" class="button" value="登录"  />
                </div>
            </form>
            </div>
        </div>
        
        <div id="ft">CopyRight&nbsp;2019&nbsp;&nbsp;版权所有&nbsp;&nbsp;More Templates <a href="http://www.alien.com/" target="_blank" title="alien">alien</a> &nbsp;&nbsp;</div>
    </div>
   
</div>

</body>
<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	$('select').select();
	
	$('.loginButton').click(function(e) {
        //document.location.href = "main.jsp";
    });
</script>

</html>
