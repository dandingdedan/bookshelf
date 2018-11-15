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
						<a href="index.html">Home</a>
						<a href="registration.html">Register</a>
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
							<a class="main_btn" href="#">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner reg_form">
						<h3>Create an Account</h3>
						<div class="row login_form"  method="post" id="registerForm" novalidate="novalidate" >
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="Name">
							</div>
							<div id="showmessage" ></div> 
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="phonenumber" name="phonenumber" placeholder="Phone Number">
							</div>
							<div class="col-md-12 form-group">
								<input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password" name="password" placeholder="Password">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="pass" name="pass" placeholder="Confirm password">
							</div>
							<div style="padding:0 0 15px 15px; color:red" id="demo1"></div>
							<div class="col-md-12 form-group">
								<button  value="submit" class="btn submit_btn">Register</button>
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
	   var phonenumber = $("#phonenumber").val();
	   var email = $("#email").val();
	   var password = $("#password").val();
	   var pass=$("#pass").val();
	   if (username == "" ||phonenumber==""|| email== ""|| password ==""||pass=="")
		   $("#demo1").text("Please fill in all the information!");
	   else if (!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(email))
		   $("#demo1").text("Incorrect email format!");
	   else if (!/^\d{8}$/.test(phonenumber))
		   $("#demo1").text("Incorrect phone number format!");
	   else if (password!=pass)
		   $("#demo1").text("The two passwords do not match!");
	   else{
	  		$.ajax({
			    url:'RegisterServlet',
			    type:'POST', //GET
			    async:true,    //或false,是否异步
			    data:{
			        name:username,password:password,email:email,phonenumber:phonenumber//想要传输过去的数据 key：value，另一个页面通过 key接收value的值
			    },
			    dataType:'text',    //返回的数据格式：json/xml/html/script/jsonp/text
			    success:function(data){//data是成功后，接收的返回值
			    	if(data == "1"){
			    			alert("Registered successfully!");
			    			window.location.href = "login.jsp"	  
			    		}  		
			    	else
			    		//alert("Error");
			    		document.getElementById("demo1").innerHTML = "Name is already used! ";
			    }
		   	});
	   }
 
   })
   	</script>


</html>