<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Dashio - Bootstrap Admin Template</title>
${project = pageContext.request.contextPath ; ''}
<!-- Favicons -->
<link href="${project}/Dashio/img/favicon.png" rel="icon">
<link href="${project}/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="${project}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="${project}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${project}/Dashiolib/bootstrap-datepicker/css/datepicker.css" /> 
<link rel="stylesheet" type="text/css" href="${project}/Dashiolib/bootstrap-daterangepicker/daterangepicker.css" />
<!-- Custom styles for this template -->
<link href="${project}/Dashio/css/style.css" rel="stylesheet">
<link href="${project}/Dashio/css/style-responsive.css" rel="stylesheet">

<script src="${project}/Dashio/lib/jquery/jquery.min.js"></script>
<script src="${project}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="${project}/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
<script src="${project}/Dashio/lib/jquery.ui.touch-punch.min.js"></script>
<script class="include" type="text/javascript"
	src="${project}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="${project}/Dashio/lib/jquery.scrollTo.min.js"></script>
<script src="${project}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
<!--common script for all pages-->
<script src="${project}/Dashio/lib/common-scripts.js"></script>



  <link href="${project}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link href="${project}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
  <link href="${project}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link href="${project}/Dashio/lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link href="${project}/Dashio/lib/bootstrap-datetimepicker/datertimepicker.css" />
  
    <script src="${project}/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="${project}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script src="${project}/Dashio/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="${project}/Dashio/lib/bootstrap-daterangepicker/date.js"></script>
  <script src="${project}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script src="${project}/Dashio/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script src="${project}/Dashio/lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script src="${project}/Dashio/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="${project}/Dashio/lib/advanced-form-components.js"></script>





</head>


<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <!--logo start-->
      <a href="${project}/index" class="logo"><b>TEAM<span>PROJECT</span></b></a>
      <!--logo end-->
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
        
        
        <!-- 상희 로그인 시작 -->
        
        
          			<c:if test="${ id == null}">
          			
          <li><a class="logout" href="${project}/member/login">로그인</a></li>
          <li><a class="logout" href="${project}/member/join">회원가입</a></li>
				
					</c:if>
					
					<c:if test="${ id != null}">						
		
		  <li><a class="logout" href="${project}/member/logout">로그아웃</a></li>
		  <%-- <li><a class="logout" href="${project}/member/memberPage?id=${id}">회원정보수정</a></li> --%>
		  <li><a class="logout" href="${project}/member/memCheckPasswd">회원정보</a></li>
		  <li><a class="logout" href="${project}/member/delete">회원탈퇴</a></li>	
					
					</c:if>
		
					
		<!-- 상희 로그인 끝 -->
          
          
          
          
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <!-- <p class="centered"><a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p> -->
          
          <!-- 상희 로그인상태 id 출력 시작 -->
          
          
          <h3 class="centered"><p style="color: white;">${id}</p></h3>
          
          
          <!-- 상희 로그인상태 id 출력 끝 -->

          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>QnA</span>
              </a>
            <ul class="sub">
              <li><a href="${project }/board/list">글목록</a></li>
              <li><a href="${project }/board/write">글작성</a></li>
            </ul>
          </li>

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
<section id="main-content">
<section class="wrapper site-min-height">
