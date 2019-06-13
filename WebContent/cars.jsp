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
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<link href="css/jquery-ui.css" rel='stylesheet' type='text/css' />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/master.css" rel="stylesheet" type="text/css" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" />
<!-- /js -->
<script src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script src="js/jquery-ui.js"></script>

<!-- //js-->
<script type="text/javascript">
$(function() {
    $( "#dialog" ).hide();
    $( "#dialog1" ).hide();
    document.getElementById("wrapper").style.display="none";
    console.log("页面加载完成");
});
</script>
 <style type="text/css">
.orderfrom {
	position: absolute;
	top: 0;
	left: 25%;
	/*background-color: red;*/
	z-index: 998;
	overflow: auto;
}

.minpic {
	width: 50px;
	height: auto;
}

.maxpic {
	width: 300px;
	height: auto;
}
</style>
<style type="text/css">
    .elegant-aero {
	margin-left:auto;
	margin-right:auto;
	max-width:500px;
	background:#D2E9FF;
	padding:20px 20px 20px 20px;
	font:12px Arial,Helvetica,sans-serif;
	color:#666;
}
.elegant-aero h1 {
	font:24px "Trebuchet MS",Arial,Helvetica,sans-serif;
	padding:10px 10px 10px 20px;
	display:block;
	background:#C0E1FF;
	border-bottom:1px solid #B8DDFF;
	margin:-20px -20px 15px;
}
.elegant-aero h1>span {
	display:block;
	font-size:11px;
}
.elegant-aero label>span {
	float:left;
	margin-top:10px;
	color:#5E5E5E;
}
.elegant-aero label {
	display:block;
	margin:0px 0px 5px;
}
.elegant-aero label>span {
	float:left;
	width:20%;
	text-align:right;
	padding-right:15px;
	margin-top:10px;
	font-weight:bold;
}
.elegant-aero input[type="text"],.elegant-aero input[type="email"],.elegant-aero textarea,.elegant-aero select {
	color:#888;
	width:70%;
	padding:0px 0px 0px 5px;
	border:1px solid #C5E2FF;
	background:#FBFBFB;
	outline:0;
	-webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
	box-shadow:inset 0px 1px 6px #ECF3F5;
	font:200 12px/25px Arial,Helvetica,sans-serif;
	height:30px;
	line-height:15px;
	margin:2px 6px 16px 0px;
}
.elegant-aero textarea {
	height:100px;
	padding:5px 0px 0px 5px;
	width:70%;
}
.elegant-aero select {
	background:#fbfbfb url('down-arrow.png') no-repeat right;
	background:#fbfbfb url('down-arrow.png') no-repeat right;
	appearance:none;
	-webkit-appearance:none;
	-moz-appearance:none;
	text-indent:0.01px;
	text-overflow:'';
	width:70%;
}
.elegant-aero .button {
	padding:10px 30px 10px 30px;
	background:#66C1E4;
	border:none;
	color:#FFF;
	box-shadow:1px 1px 1px #4C6E91;
	-webkit-box-shadow:1px 1px 1px #4C6E91;
	-moz-box-shadow:1px 1px 1px #4C6E91;
	text-shadow:1px 1px 1px #5079A3;
}
.elegant-aero .button:hover {
	background:#3EB1DD;
}
</style>
<%@ page import="java.util.*" %>
<%@ page import="cn.ch.dao.*,cn.ch.bean.*,cn.ch.util.*" %>
<%
	List<Car> cars = new ArrayList<Car>();
	cars = CarDao.getAllCars();
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
									<a href="Logout"  style="color: #000"><img style="width:40px;height:auto" alt="" src="images/exit.png"></a>
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
							<li class="active">车辆管理</li>
						</ol>
					</div>
					<!--//sub-heard-part-->
					
					<!-- 租车信息的表单 -->
					<div style="display:none" id="wrapper" class="orderfrom">
				        <!-- HEADER -->
				        <div id="header">
				                     <img src="img/logo.png" alt="" width="200" height="23" id="logo"/>
				        </div>
				        <!-- /HEADER -->
				        <!-- MAIN GREEN AREA -->
				        <div id="main_container">
				        <!-- form -->
				        <form action="<%=path %>/AddOrder" method="post" id="myform" class="expose" > 
				                <fieldset class="col_f_1">	
				                        <label>汽车编号</label><input type="text" id="carid" name="carid"  class="required" value="" /> 
				                        <label>用户编号</label><input type="text" name="userid"   class="required"  />
				                        
				                </fieldset>
				                <fieldset class="col_f_2">
				                		<label>租车时间</label> <input type="date" name="starttime" />	
				                        <label>还车时间</label> <input type="date" name="returntime"  class="required"  />
				                 </fieldset>
				                 <div class="clr"></div>
				                 <hr />
				                 <button type="submit">提交</button>
				                 <button type="button" onclick="javascript:document.getElementById('wrapper').style.display='none'">取消</button>
				        </form>	
				        <!--/form -->
				         <div id="header_content">
				                     <h1>Rent now<strong>It's totaly free</strong></h1>
				                     <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra, leo sit amet auctor fermentum, risus lorem posuere tortor.</h2>
				         </div>
				         <div class="clr"></div>
				     </div>
				</div>
				
					
					<!-- 添加车辆的表单 -->
					<div class="graph-visual tables-main">
						
						<div id="dialog"  style="display:none" title="基本的对话框">
 						<form method="post" class="elegant-aero">
					    
					    <b>在相应的位置填入详细信息</b>
					    <label>
					    <span>车牌号</span>
					    <input id="addcarid" type="text" name="name" />
					    </label>
					
					    <label>
					    <span>详细描述</span>
					    <!-- <input id="idcard" type="text"  name="idcard"  /> -->
					    <textarea id="adddescribe" name="describe" rows="" cols=""></textarea>
					    </label>
					
					    <label>
					    <span>价格</span>
					    <input id="addprice" type="text"  name="price" />
					    </label>
					    <label>
					    <span>车型</span>
					    <input id="addmodel" type="text" name="model" />
					    </label>
					    
					   
					    
					    </form>
					    <div style="text-align: center">
					    <form name="form_uploadImg" action="" method="POST" class="elegant-aero" enctype="multipart/form-data">
							 <input id="uploadFileInput" type="file" size="45" name="uploadFileInput" class="input" />
							 <input type="button" id="buttonUpload" onclick="return ajaxFileUpload();" value="上传图片"/>
						 </form>
					    </div>
					    
						  <div class="elegant-aero" style="text-align:center; vertical-align:middel;">
					    	<input type="button" align="center" id="addcarbtn" class="button" value="添加" />
					    </div>
					</div>
					
					<!-- 修改车辆信息 -->
					<div id="dialog1" style="display:none" title="基本的对话框">
 						<form action="<%=path %>/ChangeCarinfo" method="post" class="elegant-aero">
					    
					    <b>在相应的位置填入详细信息</b>
					    <label>
					    <span>车辆编号</span>
					    <input readonly="readonly" id="carid1" type="text" name="carid1" />
					    </label>
					    <label>
					    <span>车牌号</span>
					    <input readonly="readonly" id="id1" type="text" name="name" />
					    </label>
					
					    <label>
					    <span>详细描述</span>
					    <!-- <input id="idcard" type="text"  name="idcard"  /> -->
					    <textarea id="describe1" name="describe1" rows="" cols=""></textarea>
					    </label>
					
					    <label>
					    <span>价格</span>
					    <input id="price1" type="text"  name="price1" />
					    </label>
					    <label>
					    <span>车型</span>
					    <input readonly="readonly" id="model1" type="text" name="model" />
					    </label>
					    
					    <div style="text-align:center; vertical-align:middel;">
					    <input type="submit" align="center" class="button" value="修改" />
					    </div>
					    
					    </label>
					    </form>
					</div>
					
					
						
						<h3 class="inner-tittle two">汽车信息表</h3>
						<img onclick="showdialog()"  alt="" src="images/add.jpg" style="width:40px;height:auto">
						<div class="graph">
							<div class="tables">

								<table class="table table-hover">
									<thead>
										<tr>
											<th>汽车编号</th>
											<th>车牌号</th>
											<th>描述</th>
											<th>价格</th>
											<th>车型</th>
											<th>图片</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									<%int i = 0; %>
									<%for(Car car:cars){ if(car.getState()==1){%>
										<tr>
											<th scope="row"><%=car.getCarid() %></th>
											<td><%=car.getCarNumber() %></td>
											<td><%=car.getDescribe() %></td>
											<td><%=car.getPrice() %></td>
											<td><%=car.getModel() %></td>
											<td>
												<span >
												<img id="image<%=i %>" alt="" src=<%=car.getImage() %> class="minpic">
												</span>
												
											</td>
											<td>
												
												<a id="change1"   style="color: black"><img onclick="showOrder('<%=car.getCarid() %>')" style="width:auto;height:15%" alt="" src="images/rent.PNG"></a>
												&nbsp;&nbsp;&nbsp;
												<a id="change"  href="javascript:void(0)" onclick="change('<%=car.getCarid() %>','<%=car.getCarNumber() %>','<%=car.getModel() %>','<%=car.getDescribe() %>','<%=car.getPrice()%>')" 
												style="color: black"><img style="width:auto;height:35%" alt="" src="images/change.png"></a>
												<a id="del" href="DelCar?carid=<%=car.getCarid() %>"  style="color: black"><img style="width:auto;height:35%" alt="" src="images/del.png"></a>
											</td>
										</tr>
									<%i++;}} %>

									</tbody>
								</table>
							</div>
						</div>
						
						
						<!-- 已出租车辆信息表 -->
						<h3 class="inner-tittle two">已租出车辆</h3>
						<img onclick="showdialog()"  alt="" src="images/add.jpg" style="width:40px;height:auto">
						<div class="graph">
							<div class="tables">

								<table class="table table-hover">
									<thead>
										<tr>
											<th>汽车编号</th>
											<th>车牌号</th>
											<th>描述</th>
											<th>价格</th>
											<th>车型</th>
											<th>图片</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									<%for(Car car:cars){ if(car.getState()==0){%>
										<tr>
											<th scope="row"><%=car.getCarid() %></th>
											<td><%=car.getCarNumber() %></td>
											<td><%=car.getDescribe() %></td>
											<td><%=car.getPrice() %></td>
											<td><%=car.getModel() %></td>
											<td>
												<span >
												<img id="image<%=i %>" alt="" src=<%=car.getImage() %> class="minpic">
												</span>
												
											</td>
											<td>
												<button style="width:100px;height:35px" id="showorderinfo" onclick="getCarinfo('<%=car.getCarid()%>')">租赁信息</button>
											</td>
										</tr>
									<%i++;}} %>

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!--//graph-visual-->
				</div>
				
				
				<div id="posts">
					<div class="post">
						<h2 class="title">租赁信息</h2>
						<div class="story">
							<p id="orderid"></p>
							<p id="rentuser"></p>
							<p id="renttime"></p>
							<p id="endtime"></p>
						</div>
						<div class="meta">
							
						</div>
					</div>
				</div>
				
				<!--//outer-wp-->
				<!--footer section start-->
				<footer>
					<p>
						Copyright &copy; 2018.Company name All rights reserved.More
						Templates <a href="#" target="_blank"
							title="汽车租赁系统">汽车租赁系统</a> - Collect from <a
							href="http://www.cssmoban.com/" title="汽车租赁系统" target="_blank">汽车租赁系统</a>
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
				</a>  <span id="logo">
						
				</span> <!--<img id="logo" src="" alt="Logo"/>-->
				</a>
			</header>
			<div style="border-top: 1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
			<div class="down">
				<a href="#"><img src="images/admin.jpg"></a> <a
					href="managers.jsp"><span class=" name-caret">管理员</span></a>
				<p>System Administrator in Company</p>
				
			</div>
			<!--//down-->
			<div class="menu">
				<ul id="menu">
					<li><a href="index.jsp"><i class="fa fa-tachometer"></i>
							<span>主页</span></a></li>
					<li id="menu-academico"><a href="#"><i class="fa fa-table"></i>
							<span> 汽车管理</span> </span></a>
						</li>
					<li id="menu-academico"><a href="users.jsp"><i
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
                "position": "absolute"
            });
        } else {
            $(".page-container").removeClass("sidebar-collapsed")
                .addClass("sidebar-collapsed-back");
            setTimeout(function() {
                $("#menu span").css({
                    "position": "relative"
                });
            }, 400);
        }

        toggle = !toggle;
    });

function ajaxFileUpload() {
    console.log("file upload");

    $.ajaxFileUpload({
        url: '<%=basePath %>/UploadServlet', //需要链接到服务器地址
        secureuri: false,
        fileElementId: 'uploadFileInput',
        dataType: 'json',
        success: function(data, status) {
            console.log(data);
            //$('#result').html('上传图片成功!请复制图片地址<br/>' + data);

        },
        error: function(data, status, e) {
            //$('#result').html('上传图片失败');
        }
    });
}
</script>
	
<script type="text/javascript">
$(document).ready(function(){
	$("#addcarbtn").click(function(){ 
		console.log("ajax");
		//alert("yes");
	    $.ajax({
	        url : "${pageContext.request.contextPath}/AddCar", //后台查询验证的方法
	        dataTpye : "json",
	        data : {
	            "carid" : $('#addcarid').val(),
	            "desc" : $('#adddescribe').val(),
	            "price" : $('#addprice').val(),
	            "model" : $("#addmodel").val()
	        }, 
	        type : "post",
	        success : function(msg) {
	            if ("true" == msg) {
	               window.location.href="/RentCar/cars.jsp";
	            } else {
	                alert("error");
	            	
	            }
	        },
	        error:function(){  //请求失败的回调方法
	        	alert("登录失败，请重试");
	        }
	    });
		});
	});
function getCarinfo(x){
	$.ajax({
        url : "${pageContext.request.contextPath}/GetCarinfo", //后台查询验证的方法
        dataTpye : "json",
        data : {
           "carid":x
        }, 
        type : "post",
        success : function(msg) {
            var parsedJson = jQuery.parseJSON(msg);
            console.log(msg);
            $("#orderid").html("订单编号："+parsedJson.orderid);
            $("#rentuser").html("租赁人："+parsedJson.userid);
            $("#renttime").html("租车时间："+parsedJson.stime);
            $("#endtime").html("预计归还时间："+parsedJson.rtime);
            $("#posts").dialog({
            	"width":300,
            	"height":220,
            	"title":"汽车租赁信息",
            	"hide": 'slide'
            });
        },
        error:function(){  //请求失败的回调方法
        	alert("请求失败，请重试");
        }
    });
}

$(function(){
	<%for(i = 0; i < cars.size();i++){%>
	$("#image<%=i%>").click(function(){
		$(this).toggleClass("minpic");
		$(this).toggleClass("maxpic");
	});
	<%}%>
});
</script>
	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/cars.js"></script>
</body>
</html>