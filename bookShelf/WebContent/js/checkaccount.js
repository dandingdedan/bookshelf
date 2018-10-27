//ajax检测用户名是否存在
	
	function CheckAccount(){
		var account = $("#name").val(); //获取用户名进行判断
		
		if(account!=""){
			
		$.ajax({
			   type: "POST",
			   url: "RegisterServlet",    //这里的url为Servlet配置xml文件的路径
			   data: $("#registerForm").serialize(),  //获取form表单所有内容
			   success: function(ma){
				   ma=$.parseJSON(ma);  //获取Servlet传过来的JSON数据
				     if(ma.success=="true"){
				    	 document.getElementById("showmessage").innerHTML="name is already used";	    	 			
				     }else{
				    	 document.getElementById("showmessage").innerHTML="name is available";
				     }
			   }
			});
			
		}else{
			document.getElementById("showmessage").innerHTML="name cannot be empty";
		}
	}
