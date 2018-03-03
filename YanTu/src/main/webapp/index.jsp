<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class="no-js" lang="">
    <head>
    
	<style>
    </style>
    
    
		<!-- =====================================
			Title of the site 
		========================================== -->
		<title>研兔网</title>
		
		<!-- =====================================
			Some of mata tag 
		========================================== -->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- =====================================
			Favicon of the site
		========================================== -->
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/static/apple-touch-icon.png">

		<!-- =====================================
			Some importent css for the site
			#Bootstrap
			#Font-awesome
			#Fonts
		========================================== -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/font-awesome.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/fonts.css" media="all" />
	
		<!-- =====================================
			Some of extra effict css
		========================================== -->	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/owl.carousel.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/owl.theme.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/full-slider.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/jPushMenu.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/hover.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/jquery.fancybox.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/animate.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/preload.css" media="all" />
		
		<!--=========================
			Favicon of this site 
		============================== -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/favicon.ico" type="image/x-icon">
		
		<!--=========================
			Some of main css 
		============================== -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css"><!--css for Main sayle-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/media.css"><!--css for Responsive-->
        
        
        <script src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
        <script src="${pageContext.request.contextPath}/static/js/vendor/modernizr-2.8.3.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/custom/echarts.common.min.js"></script>
    </head>
    <body>
		
		
		<div id="loader-wrapper">
			<div id="loader"></div>

			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

		</div>
	
	
		<!--=========================
			Start area for Menu 
		============================== -->
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right">
			<img src="${pageContext.request.contextPath}/static/img/logo.png" alt="" />
			<a href="#myCarousel">主页</a>
			<a href="#hireme_area">研兔网简介</a>
			<a href="#service_area">提供的服务</a>
			<a href="#project_area">统计信息</a>
			<a href="#contact_area">考研时间轴</a>
		</nav>
		
		<div class="manu_div toggle-menu menu-right push-body">
			<button class=""><i class="fa fa-indent"></i></button>
		</div><!-- End of menu area -->
		
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!--=========================
		Start area for Header
	============================== -->
    <header id="myCarousel" class="carousel slide">
       
			<!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
		
		
        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
			<!-- Start Overlay heady -->
			<div class="header_overlay">
				<div class="container">
				
					<!-- Site logo -->
					<div class="row header_top">
						<div class="row">
							<div align="right" class="col-md-11 col-sm-11 col-xs-11 ">
								<div>
									<c:if test="${user.username == null }">
										<font color="white" size="3px">您是 游客 ，请登录获取更多权限</font>
										<a href="loginForm.do"><font color="green" size="5px">登录</font></a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<a href="registerForm.do"><font color="green" size="5px">注册</font></a>
									</c:if>
									<c:if test="${user.username != null }">
										<font color="white" size="5px">用户名：${user.username }</font>
										&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<a href="logout.do"><font color="green" size="5px">退出</font></a>
									</c:if>
								</div>

							</div>
						</div>
						
						
						<div class="col-md-12 col-sm-12 col-xs-12 logo_div">
							<h1><font style="color:white">研兔网</font></h1>
							<img src="${pageContext.request.contextPath}/static/img/logo.png" alt="" />
						</div>
						<div class="row">
							<div class="col-md-11 col-sm-11 col-xs-11 ">
								<div align="right">
									<img src="${pageContext.request.contextPath}/static/img/custom/ewm.jpg" width="100px">
								</div>
							</div>
							<div class="col-md-1 col-sm-1 col-xs-1">
								<div align="right">
									<img src="${pageContext.request.contextPath}/static/img/custom/ewm.jpg" width="100px">
								</div>							
							</div>
						</div>
											

						
					</div><!-- End Logo -->

					
					
					
					<!-- Header About -->
					<div class="row header_text">
						<div class="col-md-6 col-sm-12 col-xs-12">
							<h1>你好, 我是 <span>研兔兔</span><br/>
							考研路上 <span>与你</span> 同行 !</h1>
						</div>
						<div class="col-md-6 "></div>
					</div><!-- End Header About -->
					
					<!-- Header promo -->
					<div class="row header_promo">
						<div class="col-md-3  col-sm-3 col-xs-6">
							<div class="single_promo hvr-sweep-to-bottom">
								<i class="fa fa-desktop"></i>
								<h2>听学长说</h2>
								<a href="#">Read More</a>
							</div>
						</div>
						<div class="col-md-3  col-sm-3 col-xs-6">
							<div class="single_promo hvr-sweep-to-bottom">
								<i class="fa fa-lightbulb-o"></i>
								<h2>自建文库</h2>
								<a href="#">Read More</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="single_promo hvr-sweep-to-bottom">
								<i class="fa fa-camera"></i>
								<h2>视频教程</h2>
								<a href="#">Read More</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="single_promo hvr-sweep-to-bottom">
								<i class="fa fa-camera"></i>
								<h2>官方文档</h2>
								<a href="#">Read More</a>
							</div>
						</div>
					</div><!-- End Header Ptomo -->
					
				</div>
			</div>
		
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url('${pageContext.request.contextPath}/static/img/slider/slide1.jpg');"></div>
				<div class="carousel-caption overlay">
                    
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('${pageContext.request.contextPath}/static/img/slider/slide2.jpg');"></div>
				<div class="carousel-caption overlay">
                    
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('${pageContext.request.contextPath}/static/img/slider/slide3.jpg');"></div>
				<div class="carousel-caption overlay">
                    
                </div>
            </div>
        </div>

    </header><!-- End of Header Area -->
	
	<!--=========================
		研兔简介
	============================== -->
	<section id="hireme_area">
		<div class="row hireme_row">
		
			<!-- Start About text -->
			<div class="col-md-6 col-sm-6 col-xs-12 hireme_text  wow slideInLeft">
				<div class="hireme_inner">
					<h2>研兔 <span>简介</span></h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis.</p>
<!-- 					<a href="#" class="my_work hvr-round-corners">My Work</a>
					<a href="#" class="hair_me hvr-round-corners">Hire Me</a> -->
				</div>

			</div>
			

			
			<!-- Start About Slide -->
			<div class="col-md-6 col-sm-6 col-xs-12 hireme_slider  wow slideInRight">
				<div id="hireme_slide" class="owl-carousel owl-theme" align="middle" style="margin-top: 50px">
 
				 <%--  <div class="item"><img src="${pageContext.request.contextPath}/static/img/slider/hire_slide1.jpg" alt="The Last of us"></div>
				  <div class="item"><img src="${pageContext.request.contextPath}/static/img/slider/hire_slide2.jpg" alt="GTA V"></div>
				  <div class="item"><img src="${pageContext.request.contextPath}/static/img/slider/hire_slide3.jpg" alt="Mirror Edge"></div> --%>
				 	
				 	<video id="myVideo" src="/YanTu/static/video/movie.mp4" controls loop="loop" height="400px" width="720px"></video>
				</div>
				
			</div>
		</div>
	</section><!-- End of Hire me Area -->
	
	<!--=========================
		提供的服务
	============================== -->
	<section id="service_area" class="section_padding service_area">
		<div class="container service">	
		
			<!-- Start Service Title -->
			<div class="row service_title wow  rollIn ">
				<div class="col-md-12">
					<h2>我们 提供的<span>服务</span></h2>
					<p>优质的考研真题 + 独家录制的考研专业课教程</p>
				</div>
			</div>
			
			<!-- Start Service item -->
			<div class="row service_item">
				<div class="col-md-6 col-sm-6 col-xs-12 single_servicr  wow fadeInUp" data-wow-delay=".2s">
					<div class="service_icon">
						<i class="fa fa-file-code-o"></i>
					</div>
					<div class="service_text">
						<h3>听学长说</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12 single_servicr   wow fadeInUp" data-wow-delay=".3s">
					<div class="service_icon">
						<i class="fa fa-qrcode"></i>
					</div>
					<div class="service_text">
						<h3>自建文库</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12 single_servicr wow fadeInUp" data-wow-delay=".2s">
					<div class="service_icon">
						<i class="fa fa-paint-brush"></i>
					</div>
					<div class="service_text">
						<h3>视频教程</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12 single_servicr  wow fadeInUp" data-wow-delay=".3s">
					<div class="service_icon">
						<i class="fa fa-heartbeat"></i>
					</div>
					<div class="service_text">
						<h3>官方文档</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
				</div>
			</div>
		</div>
	</section><!-- End of Service Area -->
	
	
	<!--=========================
		报考人数统计
	============================== -->
	<section id="project_area" class="section_padding project_area">
		<div class="container">	
			<!-- Start Project Title -->
			<div class="row prject_area_title wow  rollIn ">
				<div class="col-md-12 ">
					<h2>统计信息<br/>
					<span>最新</span> 和 <span>最优</span> 数据</h2>
					<p>目前为止，各个学院报考人数详细统计条形图 </p>
				</div>
			</div><!-- End Project Title -->
			
			<div class="row prject_area_title wow  rollIn ">
				<div class="col-md-6 ">
					<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
	    			<div id="tongji" style="width: 600px;height:400px;"></div>
				</div>
				<div class="col-md-6 ">
					<!-- 数据描述 -->
	    			<div style="margin-top: 80px ;width: 600px;height:400px;" align="left">
	    				<p>计算机学院: 50</p>
	    				<p>经管学院: 200</p>
	    				<p>自动化学院: 360</p>
	    				<p>通信学院: 100</p>
	    			</div>
				</div>
			</div>
			
			
			
			
			<!-- Start Project Item -->
			<div class="row project_item">
			
				
			</div><!-- End Project Item-->
		</div>
	</section><!-- End of Project Area -->
	
<!--=========================
		时间轴
	============================== -->
	<section id="contact_area" class="section_padding contact_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12 contact_a_title  wow  rollIn ">
					<h2>考研 <span>时光轴</span></h2>
					<p>什么也不要说，继续干就对了！</p>
				</div>
			</div>
			<div class="row">
					<img style="position: relative;left: 200px" src="${pageContext.request.contextPath}/static/img/custom/kaoyanshijianzhou.jpg" alt="考研时间轴" width="800px" height="600px"/>
			</div>
		</div>
	</section><!-- End of Contact Area -->
	
	<!--=========================
		Start area for Footer
	============================== -->
	<footer  class="footer_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12" align="middle">
					<p>&copy;  2018 <a rel="nofollow" href="http://www.baidu.com">研兔</a>  所有解释权归研兔网所有. </p>
				</div>
			</div>
		</div>
	</footer><!-- End of Footer Area -->
		
		<!--=========================
			All script for this site 
		============================== -->
        <script src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
        <script src="${pageContext.request.contextPath}/static/js/login/bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/static/js/jPushMenu.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/owl.carousel.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/jquery.fancybox.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/jquery.fancybox.pack.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/wow.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/static/js/main.js"></script>

    </body>
    
    <!-- js 代码 -->
    <script type="text/javascript">
    $(function(){ 
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('tongji'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '报考人数统计数据'
            },
            itemStyle: {
            	color: 'rgba(50, 50, 255, 0.7)'
            },
            tooltip: {},
            legend: {
                data:['人数']
            },
            xAxis: {
                data: ["计算机学院","经管学院","自动化学院","通信学院"]
            },
            yAxis: {},
            series: [{
                name: '人数',
                type: 'bar',
                data: [50, 200, 360, 100]
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    	}); 

        

    </script>
</html>
