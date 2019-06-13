<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
 <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
      <title>Login or Registration</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
      <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
      <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
      <meta name="author" content="Codrops" />
      <link rel="shortcut icon" href="../favicon.ico"> 
      <link rel="stylesheet" type="text/css" href="css/demo.css" />
      <link rel="stylesheet" type="text/css" href="css/style2.css" />
<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<%
	String path = request.getContextPath();
	String mainPange = path+"/index.jsp";
	String checkLogin = path+"/Login";
	//System.out.println(path);
%>
<script type="text/javascript">
	
	
	
$(document).ready(function(){
	$("#submitLogin").click(function(){ 
		
	    $.ajax({
	        url : "${pageContext.request.contextPath}/Login", //后台查询验证的方法
	        dataTpye : "json",
	        data : {
	            "username" : $('#username').val(),
	            "password" : $('#password').val(),
	            "checkcode" : $('#checkcode').val()
	        }, 
	        type : "post",
	        success : function(msg) {
	            //根据后台返回前台的msg给提示信息加HTML
	            
	            if ("true" == msg) {
	                // 账号已经存在
	               
	            	window.location.href="/RentCar/index.jsp";
	            } else {
	                // 账号不存在
	                //alert("登录失败，请检查用户名密码后重试");
	                document.getElementById("tishi").innerHTML="<font size='2' color='red'>登录失败，请检查用户名密码后重试</font>";
	            	
	            }
	        },
	        error:function(){  //请求失败的回调方法
	        	alert("登录失败，请重试");
	        }
	    });
		});
	});
	
</script>
<script>
          function validate() {
              var pwd1 = document.getElementById("passwordsignup").value;
              var pwd2 = document.getElementById("passwordsignup_confirm").value;
              if(pwd1 == pwd2) {
                  document.getElementById("tishi1").innerHTML="<font size='2' color='green'>验证通过</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi1").innerHTML="<font size='2' color='red'>两次密码不相同</font>";
               	  document.getElementById("submit").disabled = true;
              }
          }
</script>

<body>
 <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
               
                <span class="right">
                	<strong><a href="userlogin.jsp" class="to_register">普通用户登录</a></strong>
                    <strong>小型汽车租赁系统</strong>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1>欢迎登录我们的系统<span>We are here</span></h1>
				
            </header>
         <div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>  
			<section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="#" autocomplete="on"> 
                                <h1>登录</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > 账户 </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 密码 </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 验证码 </label>
                                    <input id="checkcode" name="password" required="required" type="text" placeholder="eg. X8df!90EO" /> 
                                	<img alt="" src="Checkcode" style="width: 50%; height: auto;">
                                </p>
                                <span id="tishi"></span>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">保持登录</label>
								</p>
                                <p class="login button"> 
                                    <input id="submitLogin" type="button" value="登录" /> 
								</p>
								
                                <p class="change_link">
									还没有账户
									<a href="#toregister" class="to_register">加入我们</a>
								</p>
                            </form>
                        </div>



                        <div id="register" class="animate form">
                            <form  action="/RentCar/DoSign" method="POST" autocomplete="on"> 
                                <h1> 注册 </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">用户名</label>
                                    <input id="usernamesignup" name="username" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">密码 </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">再次输入密码</label>
                                    <input id="passwordsignup_confirm" onkeyup="validate()" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <span id="tishi1"></span>
                                <p class="signin button"> 
									<input type="submit" value="注册"/> 
								</p>
                                <p class="change_link">  
									已经有账户？
									<a href="#tologin" class="to_register"> 登录 </a>
								</p>
                            </form>
                        </div>
                        
						
                    </div>
                </div>  
            </section>
        </div>
</body>
</html>