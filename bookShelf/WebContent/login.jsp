<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="./common/header.jsp"%>
<!DOCTYPE html>
<html lang="en">


<body>
	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>Login/Register</h2>
					<div class="page_link">
						<a href="index.jsp">Home</a>
						<a href="login.jsp">Login</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Login Box Area =================-->
	<section class="login_box_area p_120">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="img/login.jpg" alt="">
						<div class="hover">
							<h4>New to our website?</h4>
							<a class="main_btn" href="registration.jsp">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
<!-- 						<form class="row login_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="Username">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="Password">
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="btn submit_btn">Log In</button>
								<a href="#">Forgot Password?</a>
							</div>
						</form> -->
						<div class="row login_form" id="contactForm" novalidate="novalidate">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="Username">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
							</div>
							
							<div style="padding:0 0 15px 15px; color:red" id="demo1"></div>
<!-- 							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div> -->
							
							<div class="col-md-12 form-group">
								<button value="submit" class="btn submit_btn">Log In</button>	
								<a href="#">Forgot Password?</a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->






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
	<script type="text/javascript" >
   /* 	/servlet/Test2 */
   $(".submit_btn").on("click", function(){
	   var username=$("#name").val();
	   var pwd=$("#pwd").val();
   		$.ajax({
		    url:'LoginServlet',
		    type:'POST', //GET
		    async:true,    //或false,是否异步
		    data:{
		        name:username,password:pwd//想要传输过去的数据 key：value，另一个页面通过 key接收value的值
		    },
		    dataType:'text',    //返回的数据格式：json/xml/html/script/jsonp/text
		    success:function(data){//data是成功后，接收的返回值
		    	if(data == "0")
		    		window.location.href = "index.jsp"	    		
		    	else
		    		//alert("Error");
		    		document.getElementById("demo1").innerHTML = "Username or Password Wrong! ";
		    }
	   	});
   })
   	</script>
</body>

</html>