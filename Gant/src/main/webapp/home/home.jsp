<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>error.jsp</title>
<style>
/*   body{width:500px;margin:3em auto} */
/*   div{ */
/*   	color:orange; */
/*   	font-size:30px; */
/*   	text-align:center; */
/*   } */
/*   span{font-size:1.5rem;color:#5d5de2} */
</style>
</head>
<body>
		<header>
			<div class="jumbotron text-center" style="margin-bottom:0">
				<h1>테스트</h1>
			</div>
		</header>
		
		<nav>
<%-- 			<jsp:include page="top.jsp" /> <br> <br> --%>
		</nav>
		
		<div class="container" style="margin-top:10px">
			<div class="row">
				<div class="col-sm-4">
					<aside>
<%-- 						<jsp:include page="left.jsp" /> --%>
					</aside>
				</div>		
				
				<div class="col-sm-8" style="margin-bottom:5rem">
					<section>
<%-- 						<jsp:include page='${pagefile}.jsp' /> --%>
					</section>
				</div>
			</div>
		</div>
		
		
		<footer>
			<jsp:include page="bottom.jsp" />	
		</footer>
		
		<script>
		
// 			const pagefile = '${pagefile}';
// 			const filelist = ["newitem", "bestitem", "useditem"];
			
// 			for(let index=0; index<filelist.length; index++) {
// 				if(pagefile==filelist[index]) {
// 					$('.nav-pills > .nav-item > .nav-link').eq(index).addClass('active');
// 				} else {
// 					$('.nav-pills> .nav-item > .nav-link').eq(index).removeClass('active');
// 				}
// 			}
			
			
		</script>
		
	</body>
</html>