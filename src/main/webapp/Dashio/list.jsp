<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">


<!-- Dashio.개인포트폴리오 -->


<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>





    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 게시판 리스트 </h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-center"></i>  (전체 글:${count})	</h4>

         
         
                
		<a href="<%=request.getContextPath() %>/board/writeForm?pageNum=${pageNum}"><button type="button" class="btn btn-round btn-primary">글작성</button></a>
		
		
		
<c:if test="${count==0 }">
		<table class="w3-table-all" width="700">
		<tr class="w3-grey">
			<td align="center" width="50">저장된 글이 없습니다</td>
		</tr></table></c:if> 

<c:if test="${count>0 }">
                <hr>                
                <thead>
                  <tr>
                    <th></th>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회</th>
                    <th>IP</th>
                  </tr>
                </thead>
                
                <c:forEach   var="article"    items="${articleList }">               
                <tbody>                                              
                  <tr>             
                    <td><c:out value="${number}"/></td>
                    <c:set var="number"  value="${number-1 }"/>
                    
                    <td><c:if test="${article.re_level > 0 }">
					<img src="<%=request.getContextPath() %>/images/level.gif" width="${5*article.re_level}" height="16">
					<img src="<%=request.getContextPath() %>/images/re.gif"></c:if>	
					<a href="<%=request.getContextPath() %>/board/content?num=${article.num}&pageNum=${pageNum}">${article.subject}</a> 
					<c:if test="${article.readcount>= 5 }">
					<img src="<%=request.getContextPath() %>/images/hot.gif" border="0" height="16"></c:if></td>
					
                    <td>${article.writer}</td>
                    
                    <td><fmt:formatDate type="date" value="${article.reg_date}" /></td>
                    
                    <td>${article.readcount}</td>
                    
                    <td>${article.ip}</td>
                  </tr>
                </tbody>
                </c:forEach>                                                                                                             
</c:if>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- row -->        
</body>

</html>
