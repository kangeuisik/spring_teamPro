<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
    <c:set var="mvo" value="${sessionScope.mvo}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!--  <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>



<link rel="stylesheet" href="${contextPath }/resources/css/style.css">
<script src="${contextPath}/resources/js/main.js"></script>
<script src="${contextPath}/resources/js/bookMenu.js"></script>
<script src="${contextPath}/resources/js/adminService.js"></script>
<script src="${contextPath}/resources/js/bookService.js"></script>
<script>
	const contextPath = "${contextPath}"
	
	let mvo = {
		id : "${mvo.id}",
		name : "${mvo.name}"
	};
</script>
<style type="text/css">
.footer img{ 
	width: 100%;
	margin: auto;
    display: block;}
    
.carousel-inner img {
    width: 100%;
    height: 100%;
  }
</style>


</head>
<body>
 <div class="container">
	<div class=" row mt-2">
	  <div class="container col-2 ">
	  	<a>------</a>
	  </div>
	  <div class="TopLogo col-5">
	  	<a href="${contextPath }/main">
	  		<img style="margin: auto; display: block;" alt="" src="${contextPath }/resources/images/????????????.png">
	  	</a>
	  </div>
	  <div class="col-4" style="text-align: right;">
		<c:if test="${empty mvo}">
			<a href="${contextPath}/member/loginForm" class="badge badge-light">???????????????</a>
			<a href="${contextPath}/member/join" class="badge badge-light">??????????????????</a>
			</ul>
		</c:if>
		<!--?????????-->
		<c:if test="${!empty mvo}">
			<ul class="d-flex justify-content-between memberInfo">
				<li><a href="${contextPath}/member/updateForm"><span class="badge badge-light"></span> ??????????????????</a></li>
				<li><a href="${contextPath}/member/imageForm"><span class="badge badge-light"></span> ????????????</a></li>
				<li><a href="${contextPath}/member/logout"><span class="badge badge-light"></span> ????????????</a></li>            		
			</ul>
		</c:if>
	 </div>	
	</div>
</div>
<div class="container">
	<div class="flex-wrap-reverse">
		<nav class="navbar navbar-expand-sm bg-light navbar-dark banner">
		<div class="p-2">
		  <a class="navbar-brand text-body" href="${contextPath }/main">
		 	<img alt="" src="${contextPath }/resources/images/????????????.png">
		 	</a>
		 </div>
		  <!-- ????????? --> 
		  <div class="p-2"> 
		  	<li class="nav-item dropdown">
		      <a class="nav-link dropdown-toggle topMenu text-body" href="#" id="navbardrop" data-toggle="dropdown">
		       ?????? ??? ??????(????????????)
		      </a>
		      <div class="dropdown-menu ">
		      	<a class="dropdown-item" href="${contextPath }/board/list">??????</a>
		        <a class="dropdown-item" href="${contextPath }/board/list/notice">??????</a>
		        <a class="dropdown-item" href="${contextPath }/board/list/question">??????(??????,????????????)</a>
		        <a class="dropdown-item" href="${contextPath }/board/list/etc">???????????????</a>
		        <a class="dropdown-item" href="${contextPath }/board/list/review">?????????????????????</a>
		      </div>
		    </li>
		   </div>
		<!-- ????????? -->
		 <div class="p-2">
		    <li class="nav-item " >
		      <a class="nav-link  topMenu text-body" href="${contextPath }/book/list/information_technology?" id="navbardrop" >
		        ????????????
		      </a>

		    </li>
		   </div>  
		<!-- ????????? -->
		<div class="p-2">    
		  	<li class="nav-item dropdown">
		      <a class="nav-link dropdown-toggle topMenu text-body" href="#" id="navbardrop" data-toggle="dropdown">
		        ?????? ??? ?????????
		      </a>
		      <div class="dropdown-menu">
		        <a class="dropdown-item" href="${contextPath }/hope/requestList">?????? ???????????? ????????????</a>
		        <a class="dropdown-item" href="${contextPath }/hope/requestForm">?????? ???????????? ????????????</a>
		        <a class="dropdown-item" href="${contextPath }/book/takeList">?????? ???????????? ??? ??????</a>
		      </div>
		    </li>
		   </div>  
		<!-- ????????? -->
		<div class="p-2"> 
		    <li class="nav-item dropdown">
		      <a class="nav-link dropdown-toggle topMenu text-body" href="${contextPath }/admin/home" id="navbardrop" data-toggle="dropdown">
		        ??????????????????
		      </a>
		      <div class="dropdown-menu ">
		        <a class="dropdown-item" href="${contextPath }/member/memInfo">??????????????????</a> <!-- ????????? -->
		        <a class="dropdown-item" href="${contextPath }/admin/book">??????????????? ??????</a>
		        <a class="dropdown-item" href="${contextPath }/hope/requestMaster">??????/???????????? ??????(?????????)</a>
		      </div>
			</li>
		</div>
		<div class="p-2 ml-auto">
			<c:if test="${not empty mvo}">
				<c:if test="${empty mvo.profile}">
					<li	><img class="rounded-circle" 
					src="${contextPath}/resources/images/default.png" 
					style="width: 50px; height: 50px;"/> ${mvo.name} ???Welcome.</li>
				</c:if>
				<c:if test="${not empty mvo.profile}">
					<li><img class="rounded-circle" 
					src="${contextPath}/memDisplay?id=${mvo.id}&imageFileName=${mvo.profile}" 
					style="width: 50px; height: 50px;"/> ${mvo.name} ???Welcome.</li>
				</c:if>           
			</c:if>
		</div>
		</nav>
	</div>	
</div>