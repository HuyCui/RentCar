<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- 导入jquery样式相关的css文件 -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/jquery-ui.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->

<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- /js -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<!-- //js-->
<style type="text/css">
    .elegant-aero {
    margin-left:auto;
    margin-right:auto;

    max-width: 500px;
    background: #D2E9FF;
    padding: 20px 20px 20px 20px;
    font: 12px Arial, Helvetica, sans-serif;
    color: #666;
    }
    .elegant-aero h1 {
    font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
    padding: 10px 10px 10px 20px;
    display: block;
    background: #C0E1FF;
    border-bottom: 1px solid #B8DDFF;
    margin: -20px -20px 15px;
    }
    .elegant-aero h1>span {
    display: block;
    font-size: 11px;
    }

    .elegant-aero label>span {
    float: left;
    margin-top: 10px;
    color: #5E5E5E;
    }
    .elegant-aero label {
    display: block;
    margin: 0px 0px 5px;
    }
    .elegant-aero label>span {
    float: left;
    width: 20%;
    text-align: right;
    padding-right: 15px;
    margin-top: 10px;
    font-weight: bold;
    }
    .elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
    color: #888;
    width: 70%;
    padding: 0px 0px 0px 5px;
    border: 1px solid #C5E2FF;
    background: #FBFBFB;
    outline: 0;
    -webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
    box-shadow: inset 0px 1px 6px #ECF3F5;
    font: 200 12px/25px Arial, Helvetica, sans-serif;
    height: 30px;
    line-height:15px;
    margin: 2px 6px 16px 0px;
    }
    .elegant-aero textarea{
    height:100px;
    padding: 5px 0px 0px 5px;
    width: 70%;
    }
    .elegant-aero select {
    background: #fbfbfb url('down-arrow.png') no-repeat right;
    background: #fbfbfb url('down-arrow.png') no-repeat right;
    appearance:none;
    -webkit-appearance:none;
    -moz-appearance: none;
    text-indent: 0.01px;
    text-overflow: '';
    width: 70%;
    }
    .elegant-aero .button{
    padding: 10px 30px 10px 30px;
    background: #66C1E4;
    border: none;
    color: #FFF;
    box-shadow: 1px 1px 1px #4C6E91;
    -webkit-box-shadow: 1px 1px 1px #4C6E91;
    -moz-box-shadow: 1px 1px 1px #4C6E91;
    text-shadow: 1px 1px 1px #5079A3;

    }
    .elegant-aero .button:hover{
    background: #3EB1DD;
    }
    
    
</style>
<%@ page import="java.util.*" %>
<%@ page import="cn.ch.dao.*,cn.ch.bean.*,cn.ch.util.*" %>
<%
	List<User> users = new ArrayList<User>();
	users = UserDao.getAllUsers();
	int datanum = LogDao.getcount();
	String path = pageContext.getServletContext().getContextPath();
%>


</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<!-- header-starts -->
				<div class="header-section">
					<!--menu-right-->
					<div class="top_menu">
						<div class="main-search">
							<form>
								<input type="text" value="Search" onFocus="this.value = '';"
									onBlur="if (this.value == '') {this.value = 'Search';}"
									class="text" /> <input type="submit" value="" />
							</form>
							<div class="close">
								<img src="images/cross.png" />
							</div>
						</div>
						<div class="srch">
							<button></button>
						</div>
						<script type="text/javascript">
							$('.main-search').hide();
							$('button').click(function() {
								$('.main-search').show();
								$('.main-search text').focus();
							});
							$('.close').click(function() {
								$('.main-search').hide();
							});
						</script>
						<!--/profile_details-->
						<div class="profile_details_left">
							<ul class="nofitications-dropdown">
								

								<li class="dropdown note">
									<a href="Logout"  style="color: #000"> <img style="width:40px;height:auto" alt="" src="images/exit.png"> </a>
								</li>
								
								<div class="clearfix"></div>
							</ul>
						</div>
						<div class="clearfix"></div>
						<!--//profile_details-->
					</div>
					<!--//menu-right-->
					<div class="clearfix"></div>
				</div>
				<!-- //header-ends -->
				<!--outter-wp-->
				<div class="outter-wp">
					<!--sub-heard-part-->
					<div class="sub-heard-part">
						<ol class="breadcrumb m-b-0">
							<li><a href="404.html">主页</a></li>
							<li class="active">系统日志</li>
							<li><button onclick="window.location.href='/RentCar/Logfile';">导出日志</button></li>
						</ol>
					</div>
				
					
				<div id="list">
	
					</div>
					<hr>
				
					<div id="pages">
					</div>
				
				
				
				</div>
				<!--//outer-wp-->
				<!--footer section start-->
				
				
				
				<footer>
					<p>
						Copyright &copy; 2018.Company name All rights reserved.More
						Templates <a href="#" target="_blank"
							title="模板之家">汽车租赁系统</a> - Collect from <a
							href="http://www.cssmoban.com/" title="网页模板" target="_blank">汽车租赁系统</a>
					</p>
				</footer>
				<!--footer section end-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<div class="sidebar-menu">
			<header class="logo">
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
				</a> <a href="404.html"> <span id="logo">
						<h1>导航栏</h1>
				</span> <!--<img id="logo" src="" alt="Logo"/>-->
				</a>
			</header>
			<div style="border-top: 1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
			<div class="down">
				<a href="managers.jsp"><img src="images/admin.jpg"></a> <a
					href="managers.jsp"><span class=" name-caret">管理员</span></a>
				<p>System Administrator in Company</p>
				
			</div>
			<!--//down-->
			<div class="menu">
				<ul id="menu">
					<li><a href="index.jsp"><i class="fa fa-tachometer"></i>
							<span>主页</span></a></li>
					<li id="menu-academico"><a href="cars.jsp"><i class="fa fa-table"></i>
							<span> 汽车管理</span> </span></a>
						</li>
					<li id="menu-academico"><a href="#"><i
							class="fa fa-file-text-o"></i> <span>用户管理</span> </span></a>
						</li>
					<li><a href="discount.jsp"><i class="lnr lnr-pencil"></i>
							<span>优惠政策</span></a></li>
					<li id="menu-academico"><a href="orders.jsp"><i
							class="lnr lnr-book"></i> <span>订单管理</span> </a>
						</li>
					<li><a href="managers.jsp">
					<i class="lnr lnr-envelope"></i> <span>管理员用户管理
								</a>
						</li>
					<li id="menu-academico"><a href="logs.jsp"><i
							class="lnr lnr-layers"></i> <span>系统日志</span> </a>
						</li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}

					toggle = !toggle;
				});
	</script>
	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	var currentPage;
	var totalpage = <%=datanum%>%15==0?parseInt(<%=datanum%>/15):parseInt(<%=datanum%>/15)+1;
	$(document).ready(function(){
		createPage(1,15,<%=datanum%>);
		currentPage = 1;
		createbutton(totalpage+1);
		
	});
	function createPage(currPage, limit, total){
		var html = [], showNum = limit;
		if (total - (currPage * limit) < 0) showNum = total - ((currPage - 1) * limit);
		html.push(' <table class="table table-hover table-bordered" cellspacing="0" width="100%">');
		 html.push(' <thead><tr><th style="font-size: 20px">logid</th><th style="font-size: 20px">管理员</th><th style="font-size: 20px">数据表</th>'
	        		+'<th style="font-size: 20px">动作</th><th style="font-size: 20px">时间</th></tr></thead><tbody>');
        console.log("ajax");
        
	    $.ajax({
	        url : "${pageContext.request.contextPath}/Page", 
	        dataTpye : "json",
	        data : {
	           "currpage":currPage,
	           "limit":limit
	        }, 
	        type : "post",
	        success : function(msg) {
	            var data = jQuery.parseJSON(msg);
	            if (data.length>0) {
                    for (var i = 0; i < showNum; i++) {
                        html.push('<tr><td>' + data[i].logid + '</td>');
                        html.push('<td>' + data[i].manager + '</td>');
                        html.push('<td>' + data[i].table + '</td>');
                        html.push('<td>' + data[i].action + '</td>');
                        html.push('<td>' + data[i].actiontime + '</td>');
                        html.push('</tr>');
                    }
                }
                html.push('</tbody></table>');
                var mainObj = $('#list');
                mainObj.empty();
                mainObj.html(html.join(''));
	            for(var j = 1; j <= totalpage; j++){
	            	if(currentPage==j){
	            		$("#page"+j).css("background-color","skyblue");
	            	}else{
	            		$("#page"+j).css("background-color","#021f4e");
	            	}
	            } 
	        },
	        error:function(){  //请求失败的回调方法
	        	alert("请求失败，请重试");
	        }
	    });
	}
	function createbutton(total) {
	    var inp;
	    for (var i = 0; i <= total; i++) {
	        if (i == total) {
	            inp = document.createElement("input");
	            inp.type = "button";
	            inp.value = "下一页";
	            inp.id = "nextpage";
	            inp.onclick = function() {
	                if (Number(currentPage) != total - 1) {
	                    createPage(Number(currentPage) + 1, 15, <%=datanum%>);
	                    currentPage = Number(currentPage) + 1;
	                    $("#page"+currentPage).css("background-color","skyblue");
	                }

	            };
	        } else if (i == 0) {
	            inp = document.createElement("input");
	            inp.type = "button";
	            inp.value = "上一页";
	            inp.id = "prepage";
	            inp.onclick = function() {
	                if (Number(currentPage) != 1) {
	                    createPage(Number(currentPage) - 1, 15, <%=datanum%>);
	                    currentPage = Number(currentPage) - 1;
	                    $("#page"+currentPage).css("background-color","skyblue");
	                }

	            };
	        } else {
	            inp = document.createElement("input");
	            inp.type = "button";
	            inp.value = i;
	            inp.id = "page" + i;
	            inp.onclick = function() {
	                console.log($(this).val());
	                currentPage = $(this).val();
	                createPage($(this).val(), 15, <%=datanum%>);
	                $("#page"+currentPage).css("background-color","skyblue");
	            };
	        }

	        document.getElementById("pages").appendChild(inp);
	    }


	}
	

</script>
</body>
</html>