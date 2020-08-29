<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <div class="row mt">

          <!-- /col-lg-12 -->
          <div class="col-lg-12 mt" >
            <div class="row content-panel" style="margin-right: 400px; margin-left: 400px;">
              <div class="panel-heading">
 
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h3 class="mb" align="center">회원정보</h3>
                        <hr>

                        <form class="form-horizontal" name="memberPage" action="upmember" style="margin: 0 auto; width:250px;" method="post">
                          <div class="form-group" >
                            <label class="col-lg-2 control-label" >ID</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text" name="id" class="form-control" value="${ memPage.id }" readonly="readonly">
                            </div>
                          </div>


						
						<div class="form-group">
                            <label class="col-lg-2 control-label" >GENDER</label>
                         	<div class="col-lg-6" style="width: 100%;" >
                         	<c:choose>
                         		<c:when test="${memPage.gender eq 'f' }">
                         		&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" disabled="disabled" value="f" id="f" checked="checked">여성  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="radio" name="gender" value="m"disabled="disabled" id="m">남성
                         		</c:when>
                         		<c:otherwise>
                         		&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="f"disabled="disabled" id="f" >여성  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="radio" name="gender" value="m" disabled="disabled"id="m" checked="checked">남성
                         		</c:otherwise>
                         	</c:choose>
                          </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >NAME</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text"  name="name" class="form-control" value="${memPage.name }" readonly="readonly">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >EMAIL</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="email" name="email" class="form-control" value="${ memPage.email }" readonly="readonly">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >PHONE</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text" name="phone" class="form-control" value="${ memPage.phone }" readonly="readonly" pattern="\d{11}">
                            </div>
                          </div>
                          
                            <div class="col-lg-offset-2 col-lg-10" style="display: flex;width:150%;padding-left: 0px;margin-left: -10px;">
                              <a class="btn btn-theme" href="${project}/index">홈으로</a>  &nbsp;&nbsp;&nbsp;
                              <a><button class="btn btn-theme" type="submit">회원정보수정</button></a>  &nbsp;&nbsp;&nbsp;
                              <a class="btn btn-theme04" href="${project}/member/delete"  >회원탈퇴</a>
                            </div>
                        
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>



</body>
</html>