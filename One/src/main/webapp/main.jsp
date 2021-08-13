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
        <title>���帮 | ������ ���㿩�� ��õ ����!</title>
<meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico  the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
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
     <link href="https://www.jeonnam.go.kr/home/site/jeonnam/css/mobile.css" media="all and (min-width:769px)" rel="stylesheet">
    <link href="corona_layout.css" media="all and (max-width:768px)" rel="stylesheet">
    <link href="corona_main.css" rel="stylesheet">
    <link href="corona_board.css" media="all and (min-width:769px)" rel="stylesheet">
     <link href="corona_board.css" media="all and (max-width:768px)" rel="stylesheet">
   <link rel="stylesheet" href="corona_index.css">
   
    <style>
        .corona_path .info {background-color:#fafafa; padding:7px 20px; font-size:16px;}
        .img_icon {margin-top: -3px;}
        .covid-19-wrap .con-t-box .ro-b .rb-con ul{height: auto;list-style: none;}
        .covid-19-wrap .con-t-box .ro-b .lb-tit{height: auto;list-style: none;}
        .covid-19-wrap .con-t-box .ro-b .rb-con ul li{height: auto;list-style: none;}
        .txTopBtn_box {right:300px;}

        @media screen and (max-width:1000px){
            .text_left a{margin:5px;}
        }

        @media screen and (max-width:1200px){
            .txTopBtn_box {right:30px;}
        }
         .corona_sigun a {color:#fff; list-style: none;}
        .tb_condition.tb_color2 thead tr th {background-color: #054c3e;font-size: 20px;}
        .tb_condition.tb_color2 tbody tr th {background-color: #1abc9c;;color: #fff;font-family: 'GmarketSansMedium';}
        .tb_condition tbody tr th, .tb_condition tbody tr td {padding:5px 0; list-style: none;}
      .ulist { list-style: none; }
        </style>
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
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
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
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
 <a class="navbar-brand" href="main.jsp"><img src="assets/img/logo2.png" alt=""></a>                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                    	<%if(member==null) {%>
                        	<button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register.html')" data-wow-delay="0.4s">�α���/ȸ������</button>
                        <% }else{ %>
                        	<button class="navbar-btn nav-button wow bounceInRight login" onclick="location.href='logout.jsp'" data-wow-delay="0.4s">�α׾ƿ�</button>
                        <% } %>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                    	<% if(member!=null){
                    		%>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="properties.html">���� ���� �׽�Ʈ</a></li>
                        <% }%>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="place.jsp">�Ƚɿ�����</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="restaurant.jsp">�ȽɽĴ�</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="domitory.jsp">�Ƚɼ���</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="commu_list.jsp">�Խ���</a></li>
                        <!-- <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h5>Home pages</h5>
                                                <ul>
                                                    <li>
                                                        <a href="index.html">Home Style 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-2.html">Home Style 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-3.html">Home Style 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-4.html">Home Style 4</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-5.html">Home Style 5</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Pages and blog</h5>
                                                <ul>
                                                    <li><a href="blog.html">Blog listing</a>  </li>
                                                    <li><a href="single.html">Blog Post (full)</a>  </li>
                                                    <li><a href="single-right.html">Blog Post (Right)</a>  </li>
                                                    <li><a href="single-left.html">Blog Post (left)</a>  </li>
                                                    <li><a href="contact.html">Contact style (1)</a> </li>
                                                    <li><a href="contact-3.html">Contact style (2)</a> </li>
                                                    <li><a href="contact_3.html">Contact style (3)</a> </li>
                                                    <li><a href="faq.html">FAQ page</a> </li> 
                                                    <li><a href="404.html">404 page</a>  </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property</h5>
                                                <ul>
                                                    <li><a href="property-1.html">Property pages style (1)</a> </li>
                                                    <li><a href="property-2.html">Property pages style (2)</a> </li>
                                                    <li><a href="property-3.html">Property pages style (3)</a> </li>
                                                </ul>

                                                <h5>Properties list</h5>
                                                <ul>
                                                    <li><a href="properties.html">Properties list style (1)</a> </li> 
                                                    <li><a href="properties-2.html">Properties list style (2)</a> </li> 
                                                    <li><a href="properties-3.html">Properties list style (3)</a> </li> 
                                                </ul>                                               
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property process</h5>
                                                <ul> 
                                                    <li><a href="submit-property.html">Submit - step 1</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 2</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 3</a> </li> 
                                                </ul>
                                                <h5>User account</h5>
                                                <ul>
                                                    <li><a href="register.html">Register / login</a>   </li>
                                                    <li><a href="user-properties.html">Your properties</a>  </li>
                                                    <li><a href="submit-property.html">Submit property</a>  </li>
                                                    <li><a href="change-password.html">Change password</a> </li>
                                                    <li><a href="user-profile.html">Your profile</a>  </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.yamm-content --> <!--
                                </li>
                            </ul>
                        </li> -->

                        <!-- <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">Contact</a></li> -->
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        
        <div class="slide-2">
            <div id="slider" class="sl-slider-wrapper">
                <div class="sl-slider">
                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                        <div class="sl-slide-inner ">

                            <div class="bg-img bg-img-1" style="background-image: url(assets/img/slide2/11.jpg);"></div>                             
                              <div class="bt_wrap">
                              <% if(member!=null){ %>
                            <blockquote><cite><a href="properties.html" class="on" style="text-align:center" > �׽�Ʈ �����ϱ�!!</a></cite> 
                              <%} else{%>
                            <blockquote><cite><a href="register.html" class="on" style="text-align:center" > �׽�Ʈ �����ϱ�!!</a></cite>  
                              <%} %>
                                <p style="text-align:center">���֡��������� ���㿩�� ����</p>
                                <!-- <span class="pull-left"><b> Area :</b> 120m </span>
                                <span class="proerty-price pull-right"> $ 300,000</span>
                                <div class="property-icon">
                                    <img src="assets/img/icon/bed.png">(5)|
                                    <img src="assets/img/icon/shawer.png">(2)|
                                    <img src="assets/img/icon/cars.png">(1)  
                                </div>-->
                          </blockquote>
                        </div>
                    </div> 
</div>
                    <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">

                        <div class="sl-slide-inner ">

                            <div class="bg-img bg-img-1" style="background-image: url(assets/img/slide2/22.jpg);"></div>                             
                           <blockquote><cite><a href="place.jsp" style="text-align:center"> �Ƚ� ������ ��õ</a></cite>
                                <p style="text-align:center">���֡������� ������ ������
                                </p> 
                                <!-- <span class="pull-left"><b> Area :</b> 120m </span>
                                <span class="proerty-price pull-right"> $ 250,000</span>
                                <div class="property-icon">
                                    <img src="assets/img/icon/bed.png">(5)|
                                    <img src="assets/img/icon/shawer.png">(2)|
                                    <img src="assets/img/icon/cars.png">(1)  
                                </div> -->
                            </blockquote>
                        </div>
                    </div>    

                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">

                        <div class="sl-slide-inner ">

                            <div class="bg-img bg-img-1" style="background-image: url(assets/img/slide2/44.jpg);"></div>                             
                           <blockquote><cite><a href="restaurant.jsp" style="text-align:center">���ȽɽĴ� ��õ</a></cite>
                                <p style="text-align:center">���֡������� ������ �Ĵ�
                                </p>
                                <!-- <span class="pull-left"><b> Area :</b> 120m </span>
                                <span class="proerty-price pull-right"> $ 360,000</span>
                                <div class="property-icon">
                                    <img src="assets/img/icon/bed.png">(5)|
                                    <img src="assets/img/icon/shawer.png">(2)|
                                    <img src="assets/img/icon/cars.png">(1)  
                                </div> -->
                            </blockquote>
                        </div>
                    </div>


                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">

                        <div class="sl-slide-inner ">

                            <div class="bg-img bg-img-1" style="background-image: url(assets/img/slide2/33.jpg);"></div>                             
                            <blockquote><cite><a href="domitory.jsp" style="text-align:center">���Ƚɼ��� ��õ</a></cite>
                                <p style="text-align:center">���֡������� ������ ����
                                </p>
                                <!-- <span class="pull-left"><b> Area :</b> 120m </span>
                                <span class="proerty-price pull-right"> $ 360,000</span>
                                <div class="property-icon">
                                    <img src="assets/img/icon/bed.png">(5)|
                                    <img src="assets/img/icon/shawer.png">(2)|
                                    <img src="assets/img/icon/cars.png">(1)  
                                </div> -->
                            </blockquote>
                        </div>
                    </div>
                </div><!-- /sl-slider -->

                <nav id="nav-dots" class="nav-dots">
                    <span class="nav-dot-current"></span>
                    <span></span>
                    <span></span>
                    <span></span> 
                </nav>
            </div><!-- /slider-wrapper -->
        </div>

        <!-- property area -->
         <div class="content-area recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                     <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                       
                        <h2>What are you waiting for?</h2>
                        <p>Enjoy a new traveling in ���֤�����!!</p>
                    </div>
                </div>
<!--  
                <div class="row">
                    <div class="proerty-th">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/property-6.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="assets/img/demo/property-5.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/property-4.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>


                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="assets/img/demo/property-5.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/property-6.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-tree more-proerty text-center">
                                <div class="item-tree-icon">
                                    <i class="fa fa-th"></i>
                                </div>
                                <div class="more-entry overflow">
                                    <h5><a href="property-1.html" >CAN'T DECIDE ? </a></h5>
                                    <h5 class="tree-sub-ttl">Show all properties</h5>
                                    <button class="btn border-btn more-black" value="All properties">All properties</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div> -->


        <!--Welcome area -->
        <div class="Welcome-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 Welcome-entry  col-sm-12">
                        <div class="col-md-5 col-md-offset-2 col-sm-6 col-xs-12">
                            <div class="welcome_text wow fadeInLeft" data-wow-delay="0.3s" data-wow-offset="100">
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                                        
                                        <h2>���㿩�� ���帮</h2>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12" >
                            <div  class="welcome_services wow fadeInRight" data-wow-delay="0.3s" data-wow-offset="100" >
                                <div class="row" >
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate" >
                                            <div class="welcome-icon"  >
                                                <a class="pe-7s-home pe-4x" href="domitory.jsp" ></a>
                                            </div>
                                            <h3 >�Ƚ� ����</h3>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <a class="pe-7s-users pe-4x" href="commu_list.jsp"></a>
                                            </div>
                                            <h3>�Խ���</h3>
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
                                            <h3>�Ƚ� ������</h3>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <a class="pe-7s-help2 pe-4x" href="restaurant.jsp"></a>
                                            </div>
                                            <h3>�Ƚ� �Ĵ� </h3>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--TESTIMONIALS -->
        <!-- <div class="testimonial-area recent-property" style="background-color: #FCFCFC; padding-bottom: 15px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        /.feature title
                        <h2>Our Customers Said  </h2> 
                    </div>
                </div>

                <div class="row">
                    <div class="row testimonial">
                        <div class="col-md-12">
                            <div id="testimonial-slider">
                                <div class="item">
                                    <div class="client-text">                                
                                        <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                        <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                    </div>
                                    <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                        <img src="assets/img/client-face1.png" alt="">
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="client-text">                                
                                        <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                        <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                    </div>
                                    <div class="client-face">
                                        <img src="assets/img/client-face2.png" alt="">
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="client-text">                                
                                        <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                        <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                    </div>
                                    <div class="client-face">
                                        <img src="assets/img/client-face1.png" alt="">
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="client-text">                                
                                        <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                        <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                    </div>
                                    <div class="client-face">
                                        <img src="assets/img/client-face2.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div> -->

        <!-- Count area -->
        <!-- <div class="count-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        /.feature title
                        <h2>You can trust Us </h2> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-xs-12 percent-blocks m-main" data-waypoint-scroll="true">
                        <div class="row">
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-users"></span>
                                    </div>
                                    <div class="chart" data-percent="5000">
                                        <h2 class="percent" id="counter">0</h2>
                                        <h5>HAPPY CUSTOMER </h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-home"></span>
                                    </div>
                                    <div class="chart" data-percent="12000">
                                        <h2 class="percent" id="counter1">0</h2>
                                        <h5>Properties in stock</h5>
                                    </div>
                                </div> 
                            </div> 
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-flag"></span>
                                    </div>
                                    <div class="chart" data-percent="120">
                                        <h2 class="percent" id="counter2">0</h2>
                                        <h5>City registered </h5>
                                    </div>
                                </div> 
                            </div> 
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-graph2"></span>
                                    </div>
                                    <div class="chart" data-percent="5000">
                                        <h2 class="percent"  id="counter3">5000</h2>
                                        <h5>DEALER BRANCHES</h5>
                                    </div>
                                </div> 

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- boy-sale area -->
        <!-- <div class="boy-sale-area">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
                        <div class="asks-first">
                            <div class="asks-first-circle">
                                <span class="fa fa-search"></span>
                            </div>
                            <div class="asks-first-info">
                                <h2>ARE YOU LOOKING FOR A Property?</h2>
                                <p> varius od lio eget conseq uat blandit, lorem auglue comm lodo nisl no us nibh mas lsa</p>                                        
                            </div>
                            <div class="asks-first-arrow">
                                <a href="properties.html"><span class="fa fa-angle-right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
                        <div  class="asks-first">
                            <div class="asks-first-circle">
                                <span class="fa fa-usd"></span>
                            </div>
                            <div class="asks-first-info">
                                <h2>DO YOU WANT TO SELL A Property?</h2>
                                <p> varius od lio eget conseq uat blandit, lorem auglue comm lodo nisl no us nibh mas lsa</p>
                            </div>
                            <div class="asks-first-arrow">
                                <a href="properties.html"><span class="fa fa-angle-right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <p  class="asks-call">QUESTIONS? CALL US  : <span class="strong"> + 3-123- 424-5700</span></p>
                    </div>
                </div>
            </div>
        </div> -->


<!--  corona -->

 <!-- wrap-->
    
    <!-- �ڷγ� 19 ���󳲵� ��Ȳ�� -->
    <div class="covid-19-wrap">
     
        <img src="assets/img/bg_top3.jpg" style="display: block;width: 100%;">


        <div class="con-t-box">
            <!-- Ÿ��Ʋ -->
            <div class="title">
                <p class="eng">COVID-19</p>
                <h2><b>�ڷγ�19</b> ���֤����� ��Ȳ�� <em>(2021�� 8�� 17�� ���� 9�� ����)</em></h2>
            </div>
            <!-- Ȯ���� -->
            <div class="ro-b n01">
                <div class="lb-tit">
                    Ȯ����
                </div>
                <div class="rb-con">
                    <ul>
                        <li>
                            <p class="name">����</p>
                            <p class="num">216,206</p>
                               <p class="sub_section"></p>
                        </li>
                        <li>
                            <p class="name">����  ��  ����</p>

                            <p class="num blue">3,619  ��  2,238</p>
                            <p class="sub_section">�����ݸ� <b>204��</b> | �ݸ����� <b>2,016��</b>  | ��� <b>18��</b></p>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- �˻� ��Ȳ -->
            <div class="ro-b n02">
                <div class="lb-tit">
                    �˻�<br>��Ȳ
                </div>
                <div class="rb-con n3">
                    <ul>
                        <li>
                            <p class="name blue">�˻���(����)</p>
                            <p class="num">1,711,270</p>
                        </li>
                        <li>
                            <p class="name blue">�˻���(�缺)</p>
                            <p class="num red">2,238</p>
                            <p class="sub_section">�ؿ����� <b>133��</b></p>
                        </li>
                        <li>
                            <p class="name blue">�˻���</p>
                            <p class="num">6,689</p>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- �ڰ� �ݸ��� -->
            <div class="ro-b n03">
                <div class="lb-tit">
                    �ڰ� <br>�ݸ���
                </div>
                <div class="rb-con">
                    <ul>
                        <li>
                            <p class="name">�ݸ���</p>
                            <p class="num">3,858</p>
                        </li>
                        <li>
                            <p class="name">�ݸ�����</p>
                            <p class="num">58,352</p>
                        </li>
                    </ul>
                </div>
                
            </div>
			
			 <div class="txTop_slide_banner">
                <!-- �����̵� -->
                <ul class="txTop_slide" style="list-style: none;">
                    <li> <!-- li -->
                   			<a href="https://ncvr.kdca.go.kr/" target="_blank" title="��â">
                                        <img src="https://www.jeonnam.go.kr/home/site/jeonnam/Z/1d066da6-0d85-44ac-b354-3df1133b8028.0803_18��_49��-�ڷγ�19-��������-��������-�����ȳ�.jpg" alt="18��~49�� �ڷγ�19 �������� �������� ���� �ȳ�" data-title="18��~49�� �ڷγ�19 �������� �������� ���� �ȳ�">
                                    </a>
                                    </li>
                        <li> <!-- li -->
                   			<a href="https://www.jeonnam.go.kr/viewer/skin/doc.html?fn=348c96abd1931bbbcc4608eaca22c37e&rs=/viewer/result" target="_blank" title="��â">
                                        <img src="https://www.jeonnam.go.kr/home/site/jeonnam/Z/fac380c7-5935-4793-bbf1-eefc0560e68b.0806_��������ȸ��-�Ÿ��α�-3�ܰ�-2��-����.jpg" alt="��������ȸ�� �Ÿ��α� 3�ܰ� 2�� ����" data-title="��������ȸ�� �Ÿ��α� 3�ܰ� 2�� ����">
                                    </a>
                                    </li>
                        <li> <!-- 
                   			<a href="https://www.korea.kr/news/visualNewsView.do?newsId=148891010" target="_blank" title="��â">
                                        <img src="https://www.jeonnam.go.kr/home/site/jeonnam/Z/f3a7e4c3-1367-48f3-af97-a279fe3b571b.0802-�ڷγ�19-��������-8_9��-������ȹ-���վȳ�.jpg" alt="�ڷγ�19 �������� 8��~9�� ������ȹ ���վȳ�" data-title="�ڷγ�19 �������� 8��~9�� ������ȹ ���վȳ�">
                                  li -->  </a>
                                    </li>
                        </ul>

                <!-- ���� ��ư �ڽ�-->
                <div class="txTop_txt">
                    <!-- ���� -->
                    <div class="">
                        <p></p>
                    </div>

                    <!-- ��ư -->
                    <div class="txTopSl_btn">
                      <!--  <button type="button" class="btn pausePlay" title="����"></button>
                        <button type="button" class="btn prev" title="����"></button>
                        <p class="page_num">
                            <span class="current">1</span>
                            <span class="qu"> / </span>
                            <span class="total">10</span>
                        </p>
                        <button type="button" class="btn next" title="����"></button>-->
                    </div>  
                </div>
            </div>
			
		    <div class="etc cor-btn-w">
            <!--    <button class="btn-lis btn-lis2 font20" title="�ؿ� �Ա��� �ȳ���"
                    onclick="window.open('https://www.jeonnam.go.kr/home/site/jeonnam/newMain/img/corona/foreignerInfo-Kr-0701.jpg')">�ؿ� �Ա��� �ȳ���<img src="/home/site/jeonnam/newMain/img/main/koro_arrow.png" alt="icon"></button>
                    <button class="btn-lis btn-lis2 font20" title="���������� �ڷγ�19 �����Ű�" onclick="window.open('https://www.safetyreport.go.kr/#safereport/safereport3')">���������� �ڷγ�19 �����Ű�<img src="assets/img/koro_arrow.png" alt="icon"></button>
                     <button class="btn-lis btn-lis2 font20 pcFont16" title="��ȸ�� �Ÿ��α� ����� �濪��ġ ��ǥ"
                    onclick="window.open('https://www.jeonnam.go.kr/home/site/jeonnam/imgs/popup/corona19/210507/contents.html')">��ȸ�� �Ÿ��α� ����� �濪��ġ ��ǥ<img src="assets/img/koro_arrow.png" alt="icon"></button>
                    <!--  <button class="btn-lis  font20" title="�ڷγ�19  �������� ��������"
                    onclick="window.open('https://ncvr.kdca.go.kr/cobk/index.html')">�ڷγ�19  �������� ��������<img src="assets/img/koro_arrow.png" alt="icon"></button>
          -->  </div>


            <style>
                @media screen and (min-width:1000px){
                   .pcFont16 {font-size:16px !important;}
                }

            </style>

  
            <div class="etc cor-btn-w">
            �� �ڷγ�19 �ǽ� �Ű�
            <br> 
                &ensp;&ensp;&ensp;061-120(�λ��ַ����ջ�㼾��), 1339(��������û) �Ǵ� ���� �ñ� ���Ǽ�
            </div>
        </div>

        

        <!-- ��ư�ڽ� -->
        <div class="cor-btn-w" >
            <button class="btn-lis" title="���ϻ�Ȳ����" onclick="window.open('https://www.jeonnam.go.kr/M05040701/boardList.do?menuId=jeonnam0504150400')">���ϻ�Ȳ���� <img src="assets/img/koro_arrow.png" alt="icon"></button>
            <button class="btn-lis" title="��������� ��Ȳ" onclick="window.open('https://www.jeonnam.go.kr/contentsView.do?menuId=jeonnam0504150500')">��������� ��Ȳ <img src="assets/img/koro_arrow.png" alt="icon"></button>
            <button class="btn-lis" title="�����ൿ��Ģ" onclick="window.open('https://www.jeonnam.go.kr/contentsView.do?menuId=jeonnam0504150100')">�����ൿ��Ģ <img src="assets/img/koro_arrow.png" alt="icon"></button>
            <button class="btn-lis" title="���󳲵� ���������������� Ȩ������" onclick="window.open('http://www.jcdm.or.kr/')">���󳲵� ���������������� Ȩ������ <img src="assets/img/koro_arrow.png" alt="icon"></button>
            <button class="btn-lis" title="�ڷγ�19 �ɸ�����" onclick="window.open('https://www.jeonnam.go.kr/contentsView.do?menuId=jeonnam0504150800')">�ڷγ�19 �ɸ����� <img src="assets/img/koro_arrow.png" alt="icon"></button>
            <button class="btn-lis" title="��ȸ�� �Ÿ��α� ���� Q&amp;A" onclick="window.open('https://www.jeonnam.go.kr/home/site/jeonnam/imgs/popup/corona19/qna/210409/qna_210409.html')">��ȸ�� �Ÿ��α� ���� Q&amp;A <img src="assets/img/koro_arrow.png" alt="icon"></button>
         </div>


		<div class="corona_day_list table_wrap_mobile">
            <table class="tb_condition tb_color1">
                <caption></caption>
                <colgroup>
                    <col style="width:15%">
                    <col style="width:12%">
                    <col style="width:12%">
                    <col style="width:12%">
                    <col style="width:12%">
                    <col style="width:12%">
                    <col style="width:12%">
                    <col style="width:12%">
                </colgroup>
                <thead>
                    <tr>
                        <th colspan="8" class="m_left">�ڷγ�19 ��¥�� �߻� ��Ȳ (�������� / �ؿ�����)</th>
                    </tr>
                </thead>
                <tbody class="dataArr">
                <tr>
                		<th>��</th>
                        <th>08.01.������</th>
                        <th>08.02.(��)</th>
                        <th>08.03.(ȭ)</th>
                        <th>08.04.(��)</th>
                        <th>08.05.(��)</th>
                        <th>08.06.(��)</th>
                        <th>08.07.(��)</th>
                        </tr>
                    <tr>
                    	<td rowspan="4"><span class="num_1" >2211��<br><font>(2078 / 133)</font></span></td>
                        <td>1929 / 123</td>
                        <td>4 / 0</td>
                        <td>15 / 0</td>
                        <td>20 / 0</td>
                        <td>23 / 0</td>
                        <td>16 / 4</td>
                        <td>17 / 2</td>
                        
                        </tr>
                <tr>
                		<th>08.08.(��)</th>
                        <th>08.09.(��)</th>
                        <th>08.10.(ȭ)</th>
                        <th>08.11.(��)</th>
                        <th>08.12.(��)</th>
                        <th>08.13.(��)</th>
                        <th>08.14.(��)</th>
                      
                        </tr>
                    <tr>
                    	<td>14 / 0</td>
                        <td>24 / 2</td>
                        <td>16 / 2</td>
                        <td>27 / 0</td>
                        <td>20 / 0</td>
                        <td>10 / 0</td>
                        <td>0 / 0</td>
                        
                       
                        </tr>
                </tbody>
            </table>
        </div>
        
        <div class="corona_sigun table_wrap_mobile" style="margin-bottom: 50px;">
            <table class="tb_condition tb_color2">
                <caption></caption>
                <colgroup>
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                </colgroup>
                <thead>
                    <tr>
                        <th colspan="8" class="m_left">�ڷγ�19 �ñ��� Ȯ���� �߻� ��Ȳ </th>
                    </tr>
                </thead>
                <tbody class="dataArr">
                    <tr>
                        <th>���ֱ�����</th>
                        <th>������</th>
                        <th>��õ��</th>
                        <th>���ֽ�</th>
                        <th>�����</th>
                        <th>������</th>
                        <th>���</th>
                        <th>��籺</th>
                    </tr>
                    <tr>
                        <td>3,619</td>
                        <td>393</td>
                        <td>508</td>
                        <td>126</td>
                        <td>175</td>
                        <td>189</td>
                        <td>16</td>
                        <td>39</td>
                    </tr>
                    <tr>
                        <th>���ﱺ</th>
                        <th>������</th>
                        <th>ȭ����</th>
                        <th>���ﱺ</th>
                        <th>������</th>
                        <th>�س���</th>
                        <th>���ϱ�</th>
                        <th>���ȱ�</th>
                    </tr>
                    <tr>
                        <td>70</td>
                        <td>18</td>
                        <td>96</td>
                        <td>12</td>
                        <td>10</td>
                        <td>27</td>
                        <td>79</td>
                        <td>52</td>
                    </tr>
                    <tr>
                        <th>����</th>
                        <th>������</th>
                        <th>�强��</th>
                        <th>�ϵ���</th>
                        <th>������</th>
                        <th>�žȱ�</th>
                        <th>���ʱ�</th>
                        <th>�ؿ�����</th>
                    </tr>
                    <tr>
                        <td>46</td>
                        <td>23</td>
                        <td>63</td>
                        <td>70</td>
                        <td>36</td>
                        <td>19</td>
                        <td>11</td>
                        <td>131</td>
                    </tr>
                    
                    </tbody>
            </table>
        </div>
	
	
		  
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

                                <img src="assets/img/nadeuli-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                                <p>����ֽô� ���㿩�� ��õ ����</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> ���ֱ����� ���� �۾Ϸ� 60</li>
                                    <li><i class="pe-7s-mail strong"> </i> nadeuli@mycompany.com</li>
                                    <li><i class="pe-7s-call strong"> </i> 010-1234-5678</li>
                                </ul>
                            </div>
                        </div>
                        <!-- <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Quick links </h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-menu">
                                    <li><a href="properties.html">Properties</a>  </li> 
                                    <li><a href="#">Services</a>  </li> 
                                    <li><a href="submit-property.html">Submit property </a></li> 
                                    <li><a href="contact.html">Contact us</a></li> 
                                    <li><a href="faq.html">fqa</a>  </li> 
                                    <li><a href="faq.html">Terms </a>  </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Last News</h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-blog">
                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 


                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer news-letter">
                                <h4>Stay in touch</h4>
                                <div class="footer-title-line"></div>
                                <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>

                                <form>
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="E-mail ... ">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                <!-- </form>  -->

                                <!-- <div class="social pull-right"> 
                                    <ul>
                                        <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                    </ul> 
                                </div> -->
                            <!-- </div>
                        </div> -->

                    </div>
                </div>
            </div>

            <!-- <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div> -->
          
          
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