<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
   </head>
   <body>   
      <div class="wrap">
         <%-- 공통 헤더 --%>
        <jsp:include page="/WEB-INF/views/include/header.jsp"/> 
              
         <%-- 내용 --%>
         <div class="mainCenter">
            <%-- 공통 메뉴 --%>
            <jsp:include page="/WEB-INF/views/include/menu.jsp"/>
            
            <div class="content">
               <div class="sector">
                  <h5>요청 매핑</h5>
	                  <div><!-- request1은 슬래쉬 없이 이름만 가지고 있다. 그러면  현재 컨트롤러에 매핑된 url에서 찾는다. 즉 ch02/content에서 찾는다. -->
	                  		<!-- 현재 매핑된 url에서 찾는다. --><!-- ch02controller에서 찾는다. -->
	                   	GET 방식 : <a class="btn btn-info btn-sm" href="getMethod">request1</a><br><br> <!--GET방식  --> 	
	                   	POST 방식 : 
	                   	<form method="post" action="postMethod" style="display:inline-block;">
	                   		<button class="btn btn-info btn-sm">request2</button>
	                   	</form>
	                  </div>
               </div>
          		<div class="sector">
                  <h5>요청 방식 별 회원 가입 처리</h5>
	                  <div>
	                   	GET 방식 : <a class="btn btn-info btn-sm" href="join">회원가입</a><br><br> <!--GET방식  --> 	
	                   											<!-- 경로가 join인 이유  현재 창이 /webapp1/ch02/content인데 상대경로로 /webapp1/ch02/join으로 갈려면 join만 써야 하기 때문이다. -->
	                  </div>
               </div>
               <div class="sector">
                  <h5>비동기 처리</h5>
	                  <div>
	                   	GET 방식 : <a class="btn btn-info btn-sm" href="javascript:fun1()">회원가입</a><br><br> <!--GET방식  --> 	
	                   	<script type="text/javascript">
	                   		function fun1(){
	                   			$.ajax({
	                   				url:"joinAsync",
	                   				method:"get",
	                   				success: function(data) {
	                   					$("#joinForm").html(data);
	                   				}
	                   			});
	                   				
	                   		};
	                   	</script>
	                   	<div id="joinForm" style="margin-top:10px;"></div>
	                  </div>
               </div>
            </div>
         </div>
         
      </div>
   </body>
</html>