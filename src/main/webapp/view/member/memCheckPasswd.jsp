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
                        <form class="form-horizontal" name="memCheckPasswd" action="memCheckPasswdPro" style="margin: 0 auto; width:400px;" method="post">
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="width: 100%;">비밀번호</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="password"  name="passwd" class="form-control" id="passwd" required="required">
                            </div>
                          </div>
                            <div class="col-lg-offset-2 col-lg-10" style="margin-left: 120px;">
                              <a class="btn btn-theme04" href="${project }/index">홈으로</a>
                              <button class="btn btn-theme" type="submit">확인</button>
                            </div>
                        </form>
                      </div>
                      <!-- /col-lg-8 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                </div>
                <!-- /tab-content -->
              </div>
              <!-- /panel-body -->
            </div>
</body>
</html>