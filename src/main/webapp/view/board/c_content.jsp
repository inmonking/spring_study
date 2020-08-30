<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


 <!--external css-->
<link rel="stylesheet" type="text/css" href="${project}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" /> 
<link rel="stylesheet" type="text/css" href="${project}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />

<!-- Custom styles for this template -->
 <script src="lib/chart-master/Chart.js"></script>
 
   <!--script for this page-->
  <script src="${project}/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <!--custom switch-->
  <script src="${project}/Dashio/lib/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="${project}/Dashio/lib/jquery.tagsinput.js"></script>

  <!--Contactform Validation-->
  <script src="${project}/Dashio/lib/php-mail-form/validate.js"></script>
  

</head>
<body>

<section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 게시글 </h3>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="row mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            
            
            
            
<div class="form-panel">
            <h4 class="title" align="left">글번호 : ${article.num}</h4>
            <%-- <h4 class="title" align="left">조회수 : ${article.readcount}</h4> --%>
            <!-- <div id="message"></div> -->
                              
 <%--            
            <div class="form-group">
			<h5 style="margin-bottom: 3px; margin-top: 20px;">분류</h5>
                <input class="form-control" value="${article.}" >                         
              </div>
             --%>
            


			<div class="form-group">
			<h5 style="margin-bottom: 3px; margin-top: 20px;">작성자</h5>
                <input class="form-control" value="${article.writer}" readOnly>                   
              </div>
                                                        
              <div class="form-group">
			<h5 style="margin-bottom: 3px; margin-top: 20px;">작성일</h5>
                <input class="form-control" value="${article.reg_date}" readOnly>
                <div class="validate"></div>                             
              </div>
              
              <div class="form-group">
			<h5 style="margin-bottom: 3px; margin-top: 20px;">글제목</h5>
                <input class="form-control" value="${article.subject}" readOnly>
                <div class="validate"></div>                             
              </div>
              
              <div class="form-group">
			<h5 style="margin-bottom: 3px; margin-top: 20px;">글내용</h5>
			<textarea class="form-control" name="content"  readOnly rows="5">${article.content}</textarea>                    
              </div>
              
<%-- (보류) 
             <div class="form-group">
			<h5>이미지</h5>
			<input class="form-control" value=" <img src ="<%=request.getContextPath()%>/images/${article.filename }">">                        
              </div> --%>

              
              </div>
              
              
              <div class="form-send" style="margin-top: 20px;" align="center">
                <input type="button" class="btn btn-large btn-primary" value="글수정" onclick="document.location.href='<%=request.getContextPath()%>/board/update?num=${article.num}&pageNum=${pageNum}'">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn btn-large btn-primary" value="글삭제" onclick="document.location.href='<%=request.getContextPath()%>/board/delete?num=${article.num}&pageNum=${pageNum}'">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             
                <input type="button" class="btn btn-large btn-primary" value="글목록" onclick="document.location.href='<%=request.getContextPath()%>/board/list?pageNum=${pageNum}'">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                
                <!-- admin 계정에서만 나오게 하기 (보류-일단 나오게 함) -->
                <input type="button" class="btn btn-large btn-primary" value="답글쓰기" onclick="document.location.href='${pageContext.request.contextPath}/board/writeForm?num=${article.num}&pageNum=${pageNum}&ref=${article.ref}&re_step=${article.re_step}&re_level=${article.re_level}'">   
                         
              </div>
            </form>
          </div>
        </div>
        <!-- /row -->
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>

</body>
</html>