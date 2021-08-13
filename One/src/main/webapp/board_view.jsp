<%@page import="Model.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CommentDAO"%>
<%@page import="Model.MemberDTO"%>
<%@page import="Model.CommuDTO"%>
<%@page import="Model.CommuDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	CommuDAO c_dao = new CommuDAO();

	int commu_no = Integer.parseInt(request.getParameter("commu_no"));
	CommuDTO commu = c_dao.get_data(commu_no);
	
	CommentDAO dao = new CommentDAO();
	ArrayList<CommentDTO> comment_list = new ArrayList<>();
	
	int cnt = dao.comment_cnt(commu_no);
	
	comment_list = dao.comment_select(commu_no);
	
	c_dao.updateBoardCnt(commu_no);
	
	MemberDTO member = (MemberDTO)session.getAttribute("login_member");
	String email = null;
	if(member!=null){
		email = member.getEmail();
	}
	session.setAttribute("commu_no", commu_no);
	

%>
<!DOCTYPE html>
<html class="no-js" >
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>���帮 | �Խ��� �б�</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">


        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="assets/css/animate.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css">
        <link rel="stylesheet" href="assets/css/lightslider.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <html lang="ko">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>Page Title</title> 
 <meta name="viewport" content="width=device-width, initial-scale=1"> 
 <link rel="stylesheet" type="text/css" media="screen" href="assets/css/index.css"> 
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

 <style>
 #comment-input{
 	width : 90%;
 	background-color : #F7FCFC;
 }
  .commentdate{
 	color : lightgrey;
 	font-size : 3px;
 }
 .comment1{
 	border-bottom : 1px solid gray ;
 }
 #info123{
 	text-align : center;
 }
  .on12{
 	color : lightgrey;
 	font-size : 3px;
 }
 
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
                    <a class="navbar-brand" href="main.jsp"><img src="assets/img/logo2.png" alt=""></a>
                </div>

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
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="test-start.jsp">���� ���� �׽�Ʈ</a></li>
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

        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">�Խ���</h1>               
                    </div>
                </div>
            </div>
        </div>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�Խ���</title>
    <link rel="stylesheet" href="assets/css/css.css">
</head>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>�Խ���</strong>
            <h4></h4>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    <%=commu.getTitle() %>
                </div>
                <div class="info">
                    <dl>
                        <dt>��ȣ</dt>
                        <dd id='commu_no'><%=commu.getCommu_no() %></dd>
                    </dl>
                     <dl>
                        <dt>����</dt>
                        <dd><%=commu.getCity_name() %></dd>
                    </dl>
                    <dl>
                        <dt>�۾���</dt>
                        <dd><%=c_dao.get_Nick(commu.getEmail()) %></dd>
                    </dl>
                    <dl>
                        <dt>�ۼ���</dt>
                        <dd><%=commu.getCommu_date() %></dd>
                    </dl>
                    <dl>
                        <dt>��ȸ</dt>
                        <dd><%=commu.getCnt() %></dd>
                    </dl>
                </div>
                <div class="cont">
                   <strong><%=commu.getContents() %></strong>                
                </div>s
                <div1 id="form-commentInfo"> <div id="comment-count">��� 
  <span id="count"><%=cnt %></span></div> 
  
  <div class = 'total'>
  	<!-- ������� -->
  	<%
  		if(!comment_list.isEmpty()){
  			for(int i = 0; i<comment_list.size(); i++){
  				%>
  					<div class='comment1'>
					  	<% String comment_email = comment_list.get(i).getEmail(); %>
					  	<div class = 'comment_nickname'><%=c_dao.get_Nick(comment_email) %></div>
					  	<div class = 'text123'><%=comment_list.get(i).getComment_text() %></div>
					  	<div class = 'commentdate'><%=comment_list.get(i).getComment_date() %></div>
					  	
					  	<%
					  		if(member!=null){
					  			if(comment_email.equals(member.getEmail())){ 
					  			out.print("<a href='CommentDelete?comment_num="+comment_list.get(i).getCommen_no()+"' class='on12'>�����ϱ�</a>");
					  		}
					  	} %>
				  	</div>
  				<%
  			}
  		}
  	
  	%>
  	<!-- ������� -->
  </div> 
  <% if(member!=null){ %>

 <form action="CommentUpload" method="post">
  <input id="comment-input" placeholder="����� �Է��� �ּ���." name = "comment_text">
  <input type="submit" id="submit" value="���">
 </form>
 <%
  }else{ %>
  
  <div id="info123">��ȸ�� �մ��� ����� ���� �� �����ϴ�. �α��� �� �ּ���.</div>
<% 	  
  }
	  %>
   </div> <div id=comments> 
    <script src="assets/js/index5.js"> </script>
           </div1>
            <div class="bt_wrap">
                <a href="commu_list.jsp" class="on">���</a>
                
                <%
                if(member!=null){
	                if(member.getEmail().equals(commu.getEmail())){
	                	%>
	                	<a href="CommuDelete">����</a>
	             <% }
                }
             %> 
                
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
                                <!-- <p>��ȸ�̽��� �ݿ��� ������õ ����</p> -->
                                <!-- <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> ����Ʈ���簳�߿�</li>
                                    <li><i class="pe-7s-mail strong"> </i> ���帮@yourcompany.com</li>
                                    <li><i class="pe-7s-call strong"> </i> 010-0000-0000</li>
                                </ul> -->
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

        <script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
        <script type="text/javascript" src="assets/js/lightslider.min.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="jquery-3.6.0.min.js"></script>

        <script>
                            $(document).ready(function () {

                                $('#image-gallery').lightSlider({
                                    gallery: true,
                                    item: 1,
                                    thumbItem: 9,
                                    slideMargin: 0,
                                    speed: 500,
                                    auto: true,
                                    loop: true,
                                    onSliderLoad: function () {
                                        $('#image-gallery').removeClass('cS-hidden');
                                    }
                                });
                            });
                            
                            $("#btnReply").click(function(){
                            	var comment_text = $("#comment-input").val(); // ��۳���
                            	var bno = $("#commu_no").val();// �Խù���ȣ
                            	var param = {'comment_text':replytext,"bno":bno};
                            	
                            	console.log("bno");
                            	$.ajax({
                            		type: "post",
                            		url : "CommentUpload",
                            		data : param,
                            		
                            		success: function(){
                            			alert("����� ��εǾ����ϴ�.");
                            	
                            		},
                            		error : function(){
                            			alert("����");
                            		}
                            	})
                            	
                            	
                            })
                            
                            
                            
                            
        </script>

</body>
</html>