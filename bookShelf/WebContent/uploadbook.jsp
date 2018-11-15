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
                    <h2>Upload Book</h2>
                    <div class="page_link">
                        <a href="index.jsp">Home</a>
                        <a href="uploadbook.jsp">Upload Book</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Tracking Box Area =================-->
    <section class="tracking_box_area p_120">
        <div class="container">
            <div class="tracking_box_inner">
                <form class="row tracking_form" method="post" enctype="multipart/form-data" action="AddBookServlet" novalidate="novalidate">
                    <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="price" name="price" placeholder="Price">
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="ISBN" name="ISBN" placeholder="ISBN">
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="courseCode" name="courseCode" placeholder="Course Code" >
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="description" name="description" placeholder="Description" >
                    </div>
                     <div class="col-md-12 form-group">
                        <input rows="3" type="file" class="form-control" id="file" name="file"  onchange="fileChange(this);">
                    </div>
                    <div class="col-md-12 form-group">
                        <button type="submit" value="submit" class="btn submit_btn">Upload</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!--================End Tracking Box Area =================-->
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
	function fileChange(target) {
		  var fileSize = 0;         
	       if (!target.files) {     
	         var filePath = target.value;     
	         var fileSystem = new ActiveXObject("Scripting.FileSystemObject");        
	         var file = fileSystem.GetFile (filePath);     
	         fileSize = file.Size;    
	       } else {    
	        fileSize = target.files[0].size;     
	        }   
	        var size = fileSize / 1024;    
	        if(size>2000){  
	         alert("The picture cannot be greater than 2M");
	         target.value="";
	         return
	        }
	        var name=target.value;
	        var fileName = name.substring(name.lastIndexOf(".")+1).toLowerCase();
	        if(fileName !="jpg" && fileName !="jpeg" && fileName !="pdf" && fileName !="png" && fileName !="dwg" && fileName !="gif" ){
	          alert("Please upload a picture(jpg,png,gif,dwg,pdf,gif)!");
	            target.value="";
	            return
	        }
	   } 


   	</script>
</body>


</html>