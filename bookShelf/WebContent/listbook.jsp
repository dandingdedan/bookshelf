<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file="./common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<!-- <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>
<body>
	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>Shop Book Page</h2>
					<div class="page_link">
						<a href="index.jsp">Home</a>
						<a href="showallbook.jsp">Show Book</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Category Product Area =================-->
	<section class="cat_product_area section_gap">
		<div class="container-fluid">
			<div class="row flex-row-reverse">
				<div class="col-lg-9">
					<div class="product_top_bar">
						<div style="">
						    <form class="bs-example bs-example-form" role="form" action="FindBookPages" method="get">
								 <div class="row">
								            <div class="form-inline">
								                <input type="text" class="form-control" placeholder="key words" name="keywords"/>
								             	    <select name="keywordstype" style="width:111px;height:32px" >
													<option value="ISBN">ISBN</option>
													<option value="Name">Name</option>
													<option value="Coursecode">Course Code</option>
													</select>
								                <button class="btn btn-primary" type="submit">search</button>
								            </div>
								 </div>
						    </form>
						</div>
					</div>
					<div class="latest_product_inner row">					
					<c:forEach items="${page.records}" var="b" varStatus="vs">	
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="single-product.jsp?id=${b.id}"><img class="img-fluid" src="${pageContext.request.contextPath}/images/${b.picturePath}/${b.filename}"  style="width:200px;height:300px;"></a>
									<div class="p_icon">
										<a href="AddLikeBooks?bookID=${b.id}&url=showallbook.jsp">
											<i class="lnr lnr-heart"></i>
										</a>
										<a href="AddCartServlet?bookID=${b.id}&url=showallbook.jsp">
											<i class="lnr lnr-cart"></i>
										</a>
									</div>
								</div>
								<a href="single-product.jsp?id=${b.id}">
									<h4>${b.name}</h4>
								</a>
								<h5>$${b.price}</h5>
							</div>
						</div>
					</c:forEach> 
					</div>
					<div class="product_top_bar">
						<div class="right_page ml-auto" >	
							<ul class="pager">
							<li><a href="${pageContext.request.contextPath}${page.url}?num=${page.prePageNum}">Previous</a></li>
							<li><a href="${pageContext.request.contextPath}${page.url}?num=${page.nextPageNum}">Next</a></li>
							</ul>
						</div> 
					</div>
				</div>
				<div class="col-lg-3">
					<div class="left_sidebar_area">
						<aside class="left_widgets cat_widgets">
							<div class="l_w_title">
								<img src="img1/book3.jpg" alt="47" style="width:400px;height:700px;">
							</div>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Category Product Area =================-->

	




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/stellar.js"></script>
	<script src="vendors/lightbox/simpleLightbox.min.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="vendors/isotope/isotope-min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="vendors/jquery-ui/jquery-ui.js"></script>
	<script src="vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="vendors/counter-up/jquery.counterup.js"></script>

</body>
</html>