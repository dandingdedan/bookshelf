<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bean.BookBean" %>
<%@ page import="com.dao.BookDao" %>
<%@ page import="com.dao.impl.BookDaoImpl" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./common/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>Single Book Page</h2>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<%
		BookDao bookDao = new BookDaoImpl();
		BookBean book = bookDao.findBookById(Integer.valueOf(request.getParameter("id")));
    			 %>
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="s_product_img">
						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100" src="${pageContext.request.contextPath}/images/<%=book.getPicturePath()%>/<%=book.getFilename()%>" alt="${book.picturePath}">
								</div>
	
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3><%=book.getName() %></h3>
						<h2>$<%=book.getPrice() %></h2>
						<ul class="list">
							<li>
								<a  href="#">
									<span>ISBN</span> : <%=book.getISBN() %></a>
							</li>
							<li>
								<a href="#">
									<span>Course Code</span> : <%=book.getCourseCode() %></a>
							</li>
						</ul>
						<p><span>Description</span> :  <%=book.getDescription() %></p>
						<div class="card_area">
							<form class="row tracking_form" method="post" enctype="multipart/form-data" action="AddCartServlet?bookID=<%=book.getId() %>&url=single-product.jsp?id=<%=book.getId()%>" novalidate="novalidate">
								<input class="main_btn" type="submit" value="Add to Cart" />
							</form>
							<input class="icon_ blnr lnr lnr-heart" type="submit" value="" />
							 <a class="icon_btn" href="AddLikeBooks?bookID=<%=book.getId()%>&url=single-product.jsp?id=<%=book.getId()%>">
								<i class="lnr lnr lnr-heart"></i>
							</a> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->
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
	<script src="js/theme.js"></script>
</body>
<%@include file="./common/foot.jsp"%>
</html>