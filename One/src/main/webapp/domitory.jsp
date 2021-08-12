<%@page import="javax.tools.Tool"%>
<%@page import="Model.DomitoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DomitoryDAO"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	
	MemberDTO member = (MemberDTO)session.getAttribute("login_member");
	
	DomitoryDAO d_dao = new DomitoryDAO();
	ArrayList<DomitoryDTO> d_list = d_dao.domitory_list();
	
	

%>
<!DOCTYPE html>
<html class="no-js">
<head>
<script src="jquery-3.6.0.min.js"></script>
<script>
        let num1 = 0;
        let num2 = 6;
        $(function () {
            $(".list1").slice(num1, num2).attr("style", "display:flex");
            $("#load1").click(function () {
                num1 += 6;
                num2 += 6;
                if (num1 < $(".list1").length) {
                    console.log("Ŭ����");
                    $(".list1").slice(num1, num2).attr("style", "display:flex");
                }

                else {
                    alert("���̻� �����ϴ� !!! ");
                }
            });
        });
</script>

<style>

.list1{
	display : none;
}


</style>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Properties page</title>

<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/price-range.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
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
							<!-- �ֻ�� ��ư -->
							<li><a href="#"><i class="fa fa-google"></i></a></li>
							<li><a href="#"><i class="fa fa-comment"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#"><i class="fa fa-youtube"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
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
				<a class="navbar-brand" href="index-2.html"><img
					src="assets/img/nadeuli-logo.png" alt=""></a>
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
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="properties.html">���� ���� �׽�Ʈ</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="place.jsp">�Ƚɿ�����</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="restaurant.jsp">�ȽɽĴ�</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="domitory.jsp">�Ƚɼ���</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="commu_list.jsp">�Խ���</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<div class="image-sky">
						<h1 class="page-title">�Ƚ� ����</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<!--��� ��ġ, 	���Ʒ� ���� ����	  -->
				<div class="col-md-12 pr0 padding-top-40 properties-page">
					<div class="col-md-50 clear">
						<div class="col-xs-10 page-subheader sorting pl0">
							<div
								class="panel panel-default sidebar-menu wow fadeInRight animated">
								<div class="panel-heading">
									<h3 class="panel-title">�α� ����</h3>
								</div>

								<div class="col-md-12 col-sm-3 col-xs-3 blg-thumb p0">
									<a href="http://www.dearcresort.com/"><img
										src="assets/img/dak.jpg" style="width: 300px; height: 200px;"><br>����
										���ũ����Ʈ</a>
									<div class="property-icon">
										<img src="assets/img/addr.png"
											style="width: 20px; height: 20px;"> ���� ������ ������ �����
										3169-30
										<div class="property-icon">
											<img src="assets/img/tell.png"
												style="width: 20px; height: 20px;"> 061-643-6790
											<div class="property-icon">
												<img src="assets/img/shield.png"
													style="width: 20px; height: 20px;"> �Ƚ� ������

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- End page header -->

				<!-- property area -->
				<div
					class="panel panel-default sidebar-menu wow fadeInRight animated">
					<div class="col-md-12 pr0 padding-top-40 properties-page">
						<div class="panel-heading">
							<h3 class="panel-title">Smart search</h3>
						</div>
						<div class="panel-body search-widget">
							<form action="domitoryS.jsp" class=" form-inline" method = "post">
								<fieldset>
									<div class="row">
										<div class="col-xs-12">
											<input type="text" class="form-control" placeholder="���� �˻�" name = "d_name">
										</div>
									</div>
								</fieldset>
								<fieldset>
									<div class="row">
										<div class="col-xs-6">
										
											<select id="lunchBegins" class="selectpicker"
												data-live-search="true" data-live-search-style="begins"
												title="���� ����" name = "city_name">
												<option>��ü����</option>
												<option>���ֱ�����</option>
												<option>������</option>
												<option>������</option>
												<option>��õ��</option>
												<option>�����</option>
												<option>������</option>
												<option>���ﱺ</option>
												<option>���</option>
												<option>������</option>
												<option>������</option>
												<option>���ϱ�</option>
												<option>�ϵ���</option>
												<option>�强��</option>
												<option>���ﱺ</option>
												<option>������</option>
												<option>�س���</option>
											</select>
										</div>
										<div class="col-xs-6">

											<select id="lunchBegins" class="selectpicker" name="d_type"
												data-live-search="true" data-live-search-style="begins"
												title="���� Ÿ��">
												<option>��ü����</option>
												<option>ȣ��</option>
												<option>����Ʈ</option>
												<option>����</option>
												<option>ȣ����</option>
												<option>���</option>
												<option>�Խ�Ʈ�Ͽ콺</option>
												<option>�ѿ�ü��</option>
											</select>
										</div>
									</div>
								</fieldset>


								<fieldset>
									<div class="row">
										<div class="col-xs-12">
											<input class="button btn largesearch-btn" value="�˻�"
												type="submit">
										</div>
									</div>
								</fieldset>
							</form>
							
							<div class="item-entry overflow">
								<h5>���ڽü� List</h5>
								
								
								<!-- ���⼭���� -->
								<%
									if (!d_list.isEmpty()){
										for (int i=0; i < d_list.size() ; i++){ %>
								<div class="col-sm-6 col-md-4 p0 list1">
									<div class="box-two proerty-item">
										<div class="item-thumb ">		
									<%
										if(d_list.get(i).getD_url()!=null){
											out.print("<a href="+d_list.get(i).getD_url()+">");
										}
										out.print("<img src="+d_list.get(i).getD_img()+" class='item-menu-img'>");
									
									%>
										</a>
										</div>
										<div class="item-entry overflow">
											<h5><%=d_list.get(i).getCity_name() %></h5>
											<div class="dot-hr"></div>
											<span class="pull-left"><b><%=d_list.get(i).getD_name() %></b> </span>

											<div class="property-icon">
												<img src="assets/img/addr.png"
													style="width: 20px; height: 20px;">&nbsp;<%=d_list.get(i).getD_address() %>
												<div class="property-icon">
													<img src="assets/img/tell.png"
														style="width: 20px; height: 20px;">&nbsp;<%=d_list.get(i).getD_tel() %>
													<div class="property-icon">
														<img src="assets/img/shield.png"
															style="width: 20px; height: 20px;"> �Ƚɿ�����
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
										
								<%			
										}
									}
								
								%>
								<!-- ������� -->
							</div>
						</div>
					</div>
					<div class="section">
						<div class="pull-right">
							<div class="pagination">
								<a href="#" class="btn_more" id = 'load1'>������</a>
							</div>
						</div>
					</div>
				</div>
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
                                <p>��ȸ�̽��� �ݿ��� ������õ ����</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> ����Ʈ���簳�߿�</li>
                                    <li><i class="pe-7s-mail strong"> </i> ���帮@mycompany.com</li>
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
	<script src="assets/js/main.js"></script>
	

</body>
</html>