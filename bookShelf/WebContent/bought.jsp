<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<h2>Shopping Cart</h2>
					<div class="page_link">
						<a href="index.jsp">Home</a>
						<a href="showcart.jsp">Cart</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Cart Area =================-->
	<section class="cart_area">
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Product</th>
								<th scope="col">Phone Number</th>
								<th scope="col"></th>
								<th scope="col">Price ($)</th>
								<!-- <th scope="col">Quantity</th> 
								<th scope="col">Total</th>-->
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${records}" var="b" varStatus="vs">
							<tr>
								<td>
									<div class="media">
									 	<input type="hidden" name="bookID" value="${b.id}">
										<div class="d-flex">
											<img src="${pageContext.request.contextPath}/images/${b.picturePath}/${b.filename}" alt="" style="width:80px;height:100px;">
										</div>
										<div class="media-body">
											<p>${b.name}</p>
										</div>
										<td>
										<h5> ${b.phonenumber}</h5>
										</td>
									</div>
								</td>
								
							<td>
									<div class="product_count">
										<!-- <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
										 class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
										 class="reduced items-count" type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button> -->
									</div>
								</td>
<!-- 								<td>
									<h5>$720.00</h5>
								</td>  -->
								<td>
									<h5>${b.price}</h5>
								</td>
							</tr>
							</c:forEach>
<!-- 							<tr class="bottom_button">
								<td>
									<a class="gray_btn" href="#">Update Cart</a>
								</td>
								<td>

								</td>
								<td>

								</td>
								<td>
									<div class="cupon_text">
										<input type="text" placeholder="Coupon Code">
										<a class="main_btn" href="#">Apply</a>
										<a class="gray_btn" href="#">Close Coupon</a>
									</div>
								</td>
							</tr> -->
							<tr>
								<td>

								</td>
								<td>

								</td>
								<td>
									<h5>Total</h5>
								</td>
								<td>
									<h5>${total}</h5>
								</td>
							</tr>
	<!-- 						<tr class="shipping_area">
								<td>

								</td>
								<td>

								</td>
								<td>
									<h5>Shipping</h5>
								</td>
								<td>
									<div class="shipping_box">
										<ul class="list">
											<li>
												<a href="#">Flat Rate: $5.00</a>
											</li>
											<li>
												<a href="#">Free Shipping</a>
											</li>
											<li>
												<a href="#">Flat Rate: $10.00</a>
											</li>
											<li class="active">
												<a href="#">Local Delivery: $2.00</a>
											</li>
										</ul>
										<h6>Calculate Shipping
											<i class="fa fa-caret-down" aria-hidden="true"></i>
										</h6>
										<select class="shipping_select">
											<option value="1">Bangladesh</option>
											<option value="2">India</option>
											<option value="4">Pakistan</option>
										</select>
										<select class="shipping_select">
											<option value="1">Select a State</option>
											<option value="2">Select a State</option>
											<option value="4">Select a State</option>
										</select>
										<input type="text" placeholder="Postcode/Zipcode">
										<a class="gray_btn" href="#">Update Details</a>
									</div>
								</td>
							</tr> -->
							<tr class="out_button_area">
								<td>

								</td>
								<td>

								</td>
								<td>

								</td>
								<td>

								</td>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->

	



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

</html>