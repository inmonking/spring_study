<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index" class="logo"><b>LEE<span>HEE</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">

          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              <span class="badge bg-theme">8</span>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="external">
                <a href="#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme">5</span>
              </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-zac.jpg"></span>
                  <span class="subject">
                  <span class="from">Zac Snider</span>
                  <span class="time">Just now</span>
                  </span>
                  <span class="message">
                  Hi mate, how is everything?
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-divya.jpg"></span>
                  <span class="subject">
                  <span class="from">Divya Manian</span>
                  <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                  Hi, I need your help with this.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-danro.jpg"></span>
                  <span class="subject">
                  <span class="from">Dan Rogers</span>
                  <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                  Love your new Dashboard.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-sherman.jpg"></span>
                  <span class="subject">
                  <span class="from">Dj Sherman</span>
                  <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                  Please, answer asap.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-bell-o"></i>
              <span class="badge bg-warning">7</span>
              </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span>
                  New User Registered.
                  <span class="small italic">3 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
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
		  <li><a class="logout" href="${project}/member/memCheckPasswd?id=${id}">회원정보수정</a></li>
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
          <p class="centered"><a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          
          
          
          
          
          <!-- 상희 로그인상태 id 출력 시작 -->
          
          
          <h5 class="centered"><p>${id}</p></h5>
          
          
          <!-- 상희 로그인상태 id 출력 끝 -->
          
          
          
          
    <!-- 사이드 메뉴 -->
          <li class="mt">
            <a href="<%=request.getContextPath()%>/board/list">
              <!-- <i class="fa fa-dashboard"></i> -->
              <span>qna</span>
              </a>
          </li>	
          <li class="sub-menu">
            <a href="<%=request.getContextPath()%>/event/roulette">
              <!-- <i class="fa fa-dashboard"></i> -->
              <span>룰렛만들기</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <!-- <i class="fa fa-desktop"></i> -->
              <span>보류</span>
              </a>
            <ul class="sub">
              <li><a href="general.html">General</a></li>
              <li><a href="buttons.html">Buttons</a></li>
              <li><a href="panels.html">Panels</a></li>
              <li><a href="font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
 
      </div>
    </aside>
    <!--sidebar end-->
<section id="main-content">
<section class="wrapper">
