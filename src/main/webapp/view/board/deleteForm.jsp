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
                        <h3 class="mb" align="center">QnA 글삭제</h3>
                        <hr>
                        <form method="post" name="writeform" action="${project }/board/deletePro" class="form-horizontal" style="margin: 0 auto; width:400px;">
                          <input type="hidden" name="num" value="${num }">
                  		  <input type="hidden" name="pageNum" value="${pageNum }">
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="width: 100%;">비밀번호</label>
                            <div class="col-lg-6" style="width: 100%;">
                              <input type="password" name="passwd" class="form-control" required="required">
                            </div>
                          </div>
                            <div class="col-lg-offset-2 col-lg-10" style="margin-left: 110px;">
                              <input type="button" value="목록보기" class="btn btn-large btn-primary"  OnClick="window.location='${project }/board/list?pageNum=${pageNum}'">
                              <input type="submit" value="글삭제" class="btn btn-large btn-primary" >
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
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

</body>
</html>