<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>