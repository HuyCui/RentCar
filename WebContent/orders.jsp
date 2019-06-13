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
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- /js -->
<script src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/paginathing.js"></script>
<!-- //js-->
<style type="text/css">
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 100%;
	border-collapse: collapse;
}

#customers td, #customers th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#customers th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #eaf2d3;
	color: #ffffff;
}

#customers tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}
</style>
<script type="text/javascript">
	  jQuery(document).ready(function($){
		 $('.order1 tbody').paginathing({
		      perPage: 2,
		      insertAfter: '.order1',
		      pageNumbers: true
		 });
		 $('.table1 tbody').paginathing({
		      perPage: 2,
		      insertAfter: '.table1',
		      pageNumbers: true
		 });
	    $('.table tbody').paginathing({
		      perPage: 3,
		      insertAfter: '.table',
		      pageNumbers: true
	    });
	    
	  });
</script>
<%@ page import="java.util.*,java.text.*"%>
<%@ page import="cn.ch.dao.*,cn.ch.bean.*,cn.ch.util.*"%>
<%
	String path = pageContext.getServletContext().getContextPath();
	SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
	List<Order> orders = new ArrayList<Order>();
	orders = OrderDao.getAllOrders();
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


								<li class="dropdown note"><a href="Logout"
									style="color: #000"><img style="width:40px;height:auto" alt="" src="images/exit.png"></a></li>

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
							<li><a href="index.html">主页</a></li>
							<li class="active">订单管理</li>
						</ol>
					</div>
					<!--//sub-heard-part-->
					<div class="graph-visual tables-main">



						<h3 class="inner-tittle two">未处理订单</h3>
						<div class="graph">
							<div class="tables">

								<table id="customers" class="table1 table-hover">
									<thead>
										<tr>
											<th>订单编号</th>
											<th>汽车编号</th>
											<th>用户编号</th>
											<th>租车时间</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<%for(Order order:orders){ 
											if(order.getState() == 0){
										%>
										<tr>
											<th scope="row"><%=order.getOrderid() %></th>
											<td><%=order.getCarid() %></td>
											<td><%=order.getUserid() %></td>
											<td><%=ft.format(order.getStarttime()) %></td>
											<td><span class="fam"> <a id="change"
													href="<%=path %>/DoReturn?orderid=<%=order.getOrderid() %>&carid=<%=order.getCarid() %>" style="color: black">还车</a>
											</span></td>
										</tr>
										<%}} %>
									</tbody>
								</table>
							</div>
						</div>
						
						<h3 class="inner-tittle two">已处理订单</h3>
						<div class="graph">
							<div class="tables">

								<table class="table table-hover">
									<thead>
										<tr>
											<th>订单编号</th>
											<th>汽车编号</th>
											<th>用户编号</th>
											<th>租车时间</th>
											<th>还车时间</th>
											<th>价格</th>
										</tr>
									</thead>
									<tbody>
										<%for(Order order:orders){ 
										if(order.getState() == 1){
									%>
										<tr>
											<th scope="row"><%=order.getOrderid() %></th>
											<td><%=order.getCarid() %></td>
											<td><%=order.getUserid() %></td>
											<td><%=ft.format(order.getStarttime()) %></td>
											<td><%=ft.format(order.getReturntime()) %></td>
											<td><%=order.getPrice() %></td>
										</tr>
										<%}} %>

									</tbody>
								</table>
							</div>
						</div>



					</div>
					<!--//graph-visual-->
				</div>
				<!--//outer-wp-->
				<!--footer section start-->
				<footer>
					<p>
						Copyright &copy; 2018.Company name All rights reserved.More
						Templates <a href="#" target="_blank" title="汽车租赁系统">汽车租赁系统</a> -
						Collect from <a href="http://www.cssmoban.com/" title="汽车租赁系统"
							target="_blank">汽车租赁系统</a>
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
					<li><a href="index.jsp"><i class="fa fa-tachometer"></i> <span>主页</span></a></li>
					<li id="menu-academico"><a href="cars.jsp"><i class="fa fa-table"></i>
							<span> 汽车管理</span> </span></a></li>
					<li id="menu-academico"><a href="users.jsp"><i
							class="fa fa-file-text-o"></i> <span>用户管理</span> </span></a></li>
					<li><a href="discount.jsp"><i class="lnr lnr-pencil"></i> <span>优惠政策</span></a></li>
					<li id="menu-academico"><a href="#"><i
							class="lnr lnr-book"></i> <span>订单管理</span> </a></li>
					<li><a href="managers.jsp"> <i class="lnr lnr-envelope"></i> <span>管理员用户管理
						</a></li>
					<li id="menu-academico"><a href="logs.jsp"><i
							class="lnr lnr-layers"></i> <span>系统日志</span> </a></li>
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
</body>
</html>