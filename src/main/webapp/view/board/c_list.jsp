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


	<!-- 자주하는 질문 -->

    <!-- <section id="main-content" style="margin-left: 0px;">
      <section class="wrapper">     
              <div class="row content-panel">
          <h3 class="centered" style="margin-top: 5px; margin-bottom: 5px;">자주하는 질문</h3>
          <div class="col-md-10 col-md-offset-1 mt mb">
            <div class="accordion" id="accordion2">
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseOne">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to purchase this template?
                    </a>
                </div>
                <div id="collapseOne" class="accordion-body collapse in">
                  <div class="accordion-inner">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseTwo">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How can I install my server?
                    </a>
                </div>
                <div id="collapseTwo" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseThree">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to change color schemes?
                    </a>
                </div>
                <div id="collapseThree" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseFour">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to integrate Revolution Slider?
                    </a>
                </div>
                <div id="collapseFour" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseFive">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How Can I get Support?
                    </a>
                </div>
                <div id="collapseFive" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                  </div>
                </div>
              </div>
            </div>
            end accordion
          </div>
          col-md-10
        </div> -->
        <!--  /row -->
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      <!-- 게시판 -->
      
      
        <div class="row">
          <!-- /col-md-12 -->
          <div class="col-md-12 mt" style="padding-left: 70px; padding-right: 70px;">
            <div class="content-panel" style="padding-left: 50px; padding-right: 50px;">
              <table class="table table-hover">
        		<h3 class="centered" style="margin-top: 5px; margin-bottom: 5px;">QnA</h3>
                <h4 style="margin-left: 0px;" align="right"><i class="fa fa-angle-center"></i>  (전체 글:${count})	</h4>

        
         	<a href="<%=request.getContextPath() %>/board/writeForm?pageNum=${pageNum}"><button type="button" class="btn btn-primary">글쓰기</button></a>
		
		
		
		
<c:if test="${count==0 }">
		<table class="w3-table-all" width="700">
		<tr class="w3-grey">
			<td align="center" width="50">저장된 글이 없습니다</td>
		</tr></table></c:if> 

                <hr>                
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>분류</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                  </tr>
                </thead>
                
				<c:if test="${count>0 }">
                <c:forEach   var="qna"    items="${qnaList }">               
                <tbody>                                              
                   <tr>
                   <!-- 번호 -->             
                    <td> <c:out value="${number}"/> </td>
                    <c:set var="number"  value="${number-1 }"/>
                    <td>
                    
                    <!-- 분류 --> 
					<td><c:if test="${cat_name}"/></td>
					
					
					<!-- 제목 --> 
					<td>
                    <c:if test="${re_level > 0 }">
                    <img src="<%=request.getContextPath() %>/images/level.gif" width="${5*re_level}" height="16">
					<img src="<%=request.getContextPath() %>/images/re.gif">
					</c:if>	
					<a href="<%=request.getContextPath() %>/board/content?num=${num}&pageNum=${pageNum}">${subject}</a> 
					<c:if test="${readcount>= 5 }">
					<img src="<%=request.getContextPath() %>/images/hot.gif" border="0" height="16">
					</c:if>
					</td>
					
					<!-- 작성자 -->
                    <td>${writer}</td>
                    
                    
                    <!-- 작성일 -->
                    <td><fmt:formatDate type="date" value="${reg_date}" /></td>
                    
                    <!-- 조회수 -->
                    <td>${readcount}</td>
                    
                  </tr>
                </tbody>
                </c:forEach>                                                                                                             
				</c:if>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
 
        
        
        



      </section>
      <!-- /wrapper -->
    </section>
        
        
        
        
        
        
        
        
        
        
        
        
        
</body>
</html>