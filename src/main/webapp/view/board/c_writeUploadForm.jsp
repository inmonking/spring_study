<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!--external css-->
<link rel="stylesheet" type="text/css"
	href="${project}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="${project}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />

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




<!--   <select class="form-control">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select> -->





</head>
<body>

	<section id="main-content">
		<section class="wrapper">
			<h3>
				<i class="fa fa-angle-right"></i> 게시글
			</h3>
			<!-- BASIC FORM ELELEMNTS -->
			<div class="row mt">
				<div class="col-lg-6 col-md-6 col-sm-6">
				  <div id="message"></div>
					<form method="post" name="writeform" enctype="multipart/form-data"  action="writeUploadPro" >
						<input type="hidden" name="num" value="${num}">
						<input type="hidden" name="pageNum" value="${pageNum}">
						<input type="hidden" name="ref" value="${ref}">
						<input type="hidden" name="re_step" value="${re_step}">
						<input type="hidden" name="re_level" value="${re_level}">

					<div align="left"><a href="<%=request.getContextPath() %>/board/list?pageNum=${pageNum}"> 글목록</a></div>


						<div class="form-group">
							<input type="text" name="name" class="form-control"  placeholder="이름"  data-msg="이름을 작성해주세요.">
							<div class="validate"></div>
						</div>

						<div class="form-group">
							 	<c:if test="${num==0 }">
   									<input type="text" name="subject" class="form-control"  placeholder="제목"  data-msg="제목을 작성해주세요.">
 								</c:if> 
 								<c:if test="${num>0 }">
 									<input type="text" name="subject" class="form-control"  placeholder="제목"  data-msg="제목을 작성해주세요."  value="[답변]">
								</c:if>
							<div class="validate"></div>
						</div>
						
						<div class="form-group">
							<input type="text" name="Email" class="form-control"  placeholder="Email"  data-msg="Email을 작성해주세요.">
							<div class="validate"></div>
						</div>
						
						<div class="form-group">
							<input type="text" name="내용" class="form-control" placeholder="내용" data-msg="내용을 작성해주세요.">
							<div class="validate"></div>
						</div>
							
						
						
						<div class="form-group">
							<input type="file" name="업로드파일" class="form-control" placeholder="파일올리기">
							<div class="validate"></div>
						</div>

						
						
						
						<div class="form-group">
							<input type="password" name="password" class="form-control"  placeholder="비밀번호"  data-msg="비밀번호를 작성해주세요.">
							<div class="validate"></div>
						</div>


						<div class="form-send">
							<input type="submit" value="글쓰기" class="btn btn-large btn-primary" >
							<input type="reset" value="다시작성" class="btn btn-large btn-primary" >
							<input type="button" value="목록보기" class="btn btn-large btn-primary"  OnClick="window.location='list'">
							
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