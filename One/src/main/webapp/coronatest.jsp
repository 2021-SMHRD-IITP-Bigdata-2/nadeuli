<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	MemberDTO member = (MemberDTO)session.getAttribute("login_member");
	

	
%>
<!DOCTYPE html>
<html>
<head class="no-js">
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>나드리 | 나만의 맞춤여행 추천 서비스!</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico  the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/price-range.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/jquery.slitslider.css">
<link rel="stylesheet" href="assets/css/style.css">
<noscript>
	<link rel="stylesheet" type="text/css" href="assets/css/styleNoJS.css" />
</noscript>

<!--  corona -->
<link href="corona_stylesheet.css" rel="stylesheet">

</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<div class="header-connect">
		<div class="container">
			<div class="row">
				<!-- <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                            <p>
                                <span><i class="pe-7s-call"></i> +1 234 567 7890</span>
                                <span><i class="pe-7s-mail"></i> your@company.com</span>
                            </p>
                        </div>
                    </div> -->
				<div
					class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
					<div class="header-half header-social">
						<ul class="list-inline">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-vine"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End top header -->

	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.jsp"><img
					src="assets/img/logo2.png" alt=""></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<div class="button navbar-right">
					<%if(member==null) {%>
					<button class="navbar-btn nav-button wow bounceInRight login"
						onclick=" window.open('register.html')" data-wow-delay="0.4s">로그인/회원가입</button>
					<% }else{ %>
					<button class="navbar-btn nav-button wow bounceInRight login"
						onclick="location.href='logout.jsp'" data-wow-delay="0.4s">로그아웃</button>
					<% } %>
				</div>
				<ul class="main-nav nav navbar-nav navbar-right">
					<% if(member!=null){
                    		%>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="properties.html">맞춤 여행 테스트</a></li>
					<% }%>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="place.jsp">안심여행지</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="restaurant.jsp">안심식당</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="domitory.jsp">안심숙소</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="commu_list.jsp">게시판</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->


	<div class="slide-2">
		<div id="slider" class="sl-slider-wrapper">
			<div class="sl-slider">
				<div class="sl-slide" data-orientation="horizontal"
					data-slice1-rotation="-25" data-slice2-rotation="-25"
					data-slice1-scale="2" data-slice2-scale="2">
					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/11.jpg);"></div>
						<div class="bt_wrap">
							<% if(member!=null){ %>
							<blockquote>
								<cite><a href="properties.html" class="on"
									style="text-align: center"> 테스트 시작하기!!</a></cite>
								<%} else{%>
								<blockquote>
									<cite><a href="register.html" class="on"
										style="text-align: center"> 테스트 시작하기!!</a></cite>
									<%} %>
									<p style="text-align: center">광주·전남지역 맞춤여행 정보</p>

								</blockquote>
						</div>
					</div>
				</div>
				<div class="sl-slide" data-orientation="vertical"
					data-slice1-rotation="10" data-slice2-rotation="-15"
					data-slice1-scale="1.5" data-slice2-scale="1.5">

					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/22.jpg);"></div>
						<blockquote>
							<cite><a href="place.jsp" style="text-align: center">
									안심 여행지 추천</a></cite>
							<p style="text-align: center">광주·전남의 안전한 여행지</p>

						</blockquote>
					</div>
				</div>

				<div class="sl-slide" data-orientation="horizontal"
					data-slice1-rotation="3" data-slice2-rotation="3"
					data-slice1-scale="2" data-slice2-scale="1">

					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/44.jpg);"></div>
						<blockquote>
							<cite><a href="restaurant.jsp" style="text-align: center">
									안심식당 추천</a></cite>
							<p style="text-align: center">광주·전남의 안전한 식당</p>

						</blockquote>
					</div>
				</div>


				<div class="sl-slide" data-orientation="horizontal"
					data-slice1-rotation="-5" data-slice2-rotation="10"
					data-slice1-scale="2" data-slice2-scale="1">

					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/33.jpg);"></div>
						<blockquote>
							<cite><a href="domitory.jsp" style="text-align: center">
									안심숙소 추천</a></cite>
							<p style="text-align: center">광주·전남의 안전한 숙소</p>

						</blockquote>
					</div>
				</div>
			</div>
			<!-- /sl-slider -->

			<nav id="nav-dots" class="nav-dots">
				<span class="nav-dot-current"></span> <span></span> <span></span> <span></span>
			</nav>
		</div>
		<!-- /slider-wrapper -->
	</div>

	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">

					<h2>What are you waiting for?</h2>
					<p>Enjoy a new traveling in 광주ㆍ전남!!</p>
				</div>
			</div>


			<!--Welcome area -->
			<div class="Welcome-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12 Welcome-entry  col-sm-12">
							<div class="col-md-5 col-md-offset-2 col-sm-6 col-xs-12">
								<div class="welcome_text wow fadeInLeft" data-wow-delay="0.3s"
									data-wow-offset="100">
									<div class="row">
										<div
											class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">

											<h2>맞춤여행 나드리</h2>

										</div>
									</div>
								</div>
							</div>
							<div class="col-md-5 col-sm-6 col-xs-12">
								<div class="welcome_services wow fadeInRight"
									data-wow-delay="0.3s" data-wow-offset="100">
									<div class="row">
										<div class="col-xs-6 m-padding">
											<div class="welcome-estate">
												<div class="welcome-icon">
													<a class="pe-7s-home pe-4x" href="domitory.jsp"></a>
												</div>
												<h3>안심 숙소</h3>
											</div>
										</div>
										<div class="col-xs-6 m-padding">
											<div class="welcome-estate">
												<div class="welcome-icon">
													<a class="pe-7s-users pe-4x" href="commu_list.jsp"></a>
												</div>
												<h3>게시판</h3>
											</div>
										</div>


										<div class="col-xs-12 text-center">
											<i class="welcome-circle"></i>
										</div>

										<div class="col-xs-6 m-padding">
											<div class="welcome-estate">
												<div class="welcome-icon">
													<a class="pe-7s-notebook pe-4x" href="place.jsp"></a>
												</div>
												<h3>안심 여행지</h3>
											</div>
										</div>
										<div class="col-xs-6 m-padding">
											<div class="welcome-estate">
												<div class="welcome-icon">
													<a class="pe-7s-help2 pe-4x" href="restaurant.jsp"></a>
												</div>
												<h3>안심 식당</h3>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<!-- wrap-->

			<!-- 코로나 19 전라남도 상황판 -->
			<div class="covid-19-wrap">
				<div class="coronacontents">
					<iframe class="coronaframe" src="coronamap.html" width="1100px"
						height="800px" scrolling="no" frameborder="0"></iframe>
				</div>


			</div>
			<!-- Footer area-->
			<div class="footer-area">

				<div class=" footer">
					<div class="container">
						<div class="row">

							<div class="col-md-3 col-sm-6 wow fadeInRight animated">
								<div class="single-footer">
									<!-- <h4>About us </h4> -->
									<!-- <div class="footer-title-line"></div> -->

									<img src="assets/img/nadeuli-logo.png" alt="" class="wow pulse"
										data-wow-delay="1s">
									<p>뉴노멀시대 맞춤여행 추천 서비스</p>
									<ul class="footer-adress">
										<li><i class="pe-7s-map-marker strong"> </i> 광주광역시 남구 송암로
											60</li>
										<li><i class="pe-7s-mail strong"> </i>
											nadeuli@mycompany.com</li>
										<li><i class="pe-7s-call strong"> </i> 010-1234-5678</li>
									</ul>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>



			<script src="assets/js/modernizr-2.6.2.min.js"></script>

			<script src="assets/js/jquery-1.10.2.min.js"></script>
			<script src="bootstrap/js/bootstrap.min.js"></script>
			<script src="assets/js/bootstrap-select.min.js"></script>
			<script src="assets/js/bootstrap-hover-dropdown.js"></script>

			<script src="assets/js/easypiechart.min.js"></script>
			<script src="assets/js/jquery.easypiechart.min.js"></script>

			<script src="assets/js/owl.carousel.min.js"></script>

			<script src="assets/js/wow.js"></script>

			<script src="assets/js/icheck.min.js"></script>
			<script src="assets/js/price-range.js"></script>


			<script src="assets/js/jquery.ba-cond.min.js"></script>
			<script src="assets/js/jquery.slitslider.js"></script>

			<script src="assets/js/main.js"></script>

			<script type="text/javascript">
                            $(function () {

                                var Page = (function () {

                                    var $nav = $('#nav-dots > span'),
                                            slitslider = $('#slider').slitslider({
                                        onBeforeChange: function (slide, pos) {

                                            $nav.removeClass('nav-dot-current');
                                            $nav.eq(pos).addClass('nav-dot-current');

                                        }
                                    }),
                                            init = function () {

                                                initEvents();

                                            },
                                            initEvents = function () {

                                                $nav.each(function (i) {

                                                    $(this).on('click', function (event) {

                                                        var $dot = $(this);

                                                        if (!slitslider.isActive()) {

                                                            $nav.removeClass('nav-dot-current');
                                                            $dot.addClass('nav-dot-current');

                                                        }

                                                        slitslider.jump(i + 1);
                                                        return false;

                                                    });

                                                });

                                            };

                                    return {init: init};

                                })();

                                Page.init();

                                /**
                                 * Notes: 
                                 * 
                                 * example how to add items:
                                 */

                                /*
                                 
                                 var $items  = $('<div class="sl-slide sl-slide-color-2" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1"><div class="sl-slide-inner bg-1"><div class="sl-deco" data-icon="t"></div><h2>some text</h2><blockquote><p>bla bla</p><cite>Margi Clarke</cite></blockquote></div></div>');
                                 
                                 // call the plugin's add method
                                 ss.add($items);
                                 
                                 */

                            });
        </script>
</body>
</html>