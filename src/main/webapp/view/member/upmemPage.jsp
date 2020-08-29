<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function join() {
   var form = eval("document.memberPage");
   if(form.passwd.value != form.joincfmPwd.value){
      alert("비밀번호가 동일하지 않습니다. 동일하게 입력해주세요.");
      return false;
   }
   return true;
}

</script>
<!-- 회원정보 수정 페이지-->



        <div class="row mt">

          <!-- /col-lg-12 -->
          <div class="col-lg-12 mt" >
            <div class="row content-panel" style="margin-right: 400px; margin-left: 400px;">
              <div class="panel-heading">
 
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h3 class="mb" align="center">회원정보 수정</h3>
                        <hr>

                        <form class="form-horizontal" name="memberPage" action="upmemberPro" style="margin: 0 auto; width:250px;" onsubmit="return join();" method="post">
                          <div class="form-group" >
                            <label class="col-lg-2 control-label" >ID</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text" name="id" class="form-control" value="${ upMem.id }" readonly="readonly">
                            </div>
                          </div>
                           
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >NAME</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text"  name="name" class="form-control" value="${ upMem.name }" readonly="readonly">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >PASSWORD</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="password"  name="password" class="form-control" required="required" id="passwd">
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">CONFIRM PASSWORD</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="password"  id="joincfmPwd" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >EMAIL</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="email" name="email" class="form-control" value="${ upMem.email }" >
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" >PHONE</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="text" name="phone" class="form-control" value="${ upMem.phone }"pattern="\d{11}" >
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