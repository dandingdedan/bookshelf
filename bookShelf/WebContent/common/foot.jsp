<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/Lunbo.js" ></script>

<style type="text/css">
	* {padding: 0;margin: 0;}
	body {background: #f3f3f3;}
	.Box {position: relative;}
	.Box .content {width: 1500px;margin: 0 auto;}
	.Box h2 {text-align: center;margin-bottom: 35px;padding-top: 50px;}
	.Box .Box_con {position: relative;}
	.Box .Box_con .btnl {position: absolute;}
	.Box .Box_con .btn {display: block;width: 41px;height: 41px;position: absolute;top: 80px;cursor: pointer;}
	.Box .Box_con .btnl {background: url(img1/jtl02.png) no-repeat center;left: -72px;}
	.Box .Box_con .btnr {background: url(img1/jtr02.png) no-repeat center;right: -72px;}
	.Box .Box_con .btnl:hover {background: url(img1/jtl03.png) no-repeat center;}
	.Box .Box_con .btnr:hover {background: url(img1/jtr03.png) no-repeat center;}
	.Box .Box_con .conbox {position: relative;overflow: hidden;}
	.Box .Box_con .conbox ul {position: relative;list-style: none;}
	.Box .Box_con .conbox ul li {float: left;width: 250px;height: 400px;margin-left: 20px;overflow: hidden;}
	.Box .Box_con .conbox ul li:first-child {margin-left: 0;}
	.Box .Box_con .conbox ul li img {display: block;width: 250px;height: 400px;transition: all 0.5s;}
	.Box .Box_con .conbox ul li:hover img {transform: scale(1.1);}
	
	.Box .BoxSwitch {margin-top: 30px;text-align: center;}
	.Box .BoxSwitch span {display: inline-block;*display: inline;*zoom: 1;vertical-align: middle;width: 30px;height: 3px;background: #ccc;margin: 0 5px;cursor: pointer;}
	.Box .BoxSwitch span.cur {background: red;}
</style>
	
</head>
<body>
<!-- 代码 开始 -->
<div class="Box">
	<div class="content">
		<h2>Maybe You are Interested</h2>

		<div class="Box_con clearfix">
			<span class="btnl btn" id="btnl"></span>
			<span class="btnr btn" id="btnr"></span>
			
			<div class="conbox" id="BoxUl">
				<ul>
					<li class="cur"><a href="single-product.jsp?id=33"><img src="http://localhost:8080/bookShelf/images/5/10/KNODFYUVK2TFNPBIU3DUJ9G37CZ6YUZ0.jpg" alt="33" style="width:250px;height:280px;"></a></li>
					
					<li class="cur"><a href="single-product.jsp?id=37"><img src="http://localhost:8080/bookShelf/images/10/13/CSY3UNGKRYGLRJMBS4P411CYCI6NTM4I.jpg" alt="37" style="width:250px;height:280px;"></a></li>
					
					<li class="cur"><a href="single-product.jsp?id=42"><img src="http://localhost:8080/bookShelf/images/5/11/PIIP270BIEIESMC8U25UAZKJX7DQNZQH.jpg" alt="42" style="width:250px;height:280px;"></a></li>
				
					<li class="cur"><a href="single-product.jsp?id=47"><img src="http://localhost:8080/bookShelf/images/3/7/KQ9ILCS5M3W85I3T92N88UC5ZUPX8APG.jpg" alt="47" style="width:250px;height:280px;"></a></li>
					
					<li class="cur"><a href="single-product.jsp?id=53"><img src="http://localhost:8080/bookShelf/images/11/15/I5D11KVXB3JADT31941CP62T215WNS2T.jpg" alt="53" style="width:250px;height:280px;"></a></li>
				
					<li class="cur"><a href="single-product.jsp?id=51"><img src="http://localhost:8080/bookShelf/images/12/13/LCI5UK4P36EFHB1FKMRHLL5XDE2CCPCJ.jpg" alt="53" style="width:250px;height:280px;"></a></li>
				</ul>
			</div>
			<p class="BoxSwitch" id="BoxSwitch">
				<span class="cur"></span>
				<span></span>
				<span></span>
				<span></span>
			</p>
		</div>
	</div>
</div>

<script type="text/javascript">
	//滚动元素id，左切换按钮，右切换按钮，切换元素个数id,滚动方式，切换方向，是否自动滚动，滚动距离，滚动时间，滚动间隔，显示个数
	LbMove('BoxUl','btnl','btnr','BoxSwitch',true,'left',true,305,500,3000,3);
</script>
<!-- 代码 结束 -->
</body>
</html>