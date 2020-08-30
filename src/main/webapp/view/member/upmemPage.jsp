<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 회원정보 수정 페이지-->



        <div class="row mt">

          <!-- /col-lg-12 -->
          <div class="col-lg-12 mt" >
            <div class="row content-panel" style="margin-right: 400px; margin-left: 400px;">
              <div class="panel-heading">
 
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h3 class="mb" align="center">회원정보</h3>
                        <hr>

                        <form class="form-horizontal" name="memberPage" action="upmemberPro" style="margin: 0 auto; width:250px;">
                          <div class="form-group" >
                            <label class="col-lg-2 control-label" >ID</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text" name="id" class="form-control" value="${ memPage.id }" readonly="readonly">
                            </div>
                          </div>

     <%--    성별 선택 되게 하는거 찾아보기                  
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >GENDER</label>
                         <div class="col-lg-6" style="width: 100%;" >
                              &nbsp;&nbsp;&nbsp;
                              <input type="text" name="gender" value="${ memPage.gender }" >
                          </div>
                          </div>
                           --%>                        
                           
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >NAME</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text"  name="name" class="form-control" value="${ memPage.name }" readonly="readonly">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >EMAIL</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="email" name="email" class="form-control" value="${ memPage.email }" >
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >PHONE</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text" name="phone" class="form-control" value="${ memPage.phone }"pattern="\d{11}">
                            </div>
                          </div>
                          
                            <div class="col-lg-offset-2 col-lg-10" style="display: contents;">
                              <button class="btn btn-theme" type="submit">회원정보수정완료</button>&nbsp;&nbsp;
                              <a href="${project}/member/delete" class="btn btn-theme04" >회원탈퇴</a>
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