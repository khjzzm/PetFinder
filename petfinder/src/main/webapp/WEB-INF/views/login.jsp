<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Insert title here</title>
</head>
<body>
   <div class="containor">
      <%@include file="../views/layout/nav.jsp"%>
      <div class="mainContents">
         <h2>로그인</h2>
   
   <div class="login">
      <form action="login_process.do" method="post" enctype="multipart/form-data">
<%
   if(session.getAttribute("idfail")!=null){
%>         <p>아이디와 비밀번호를 확인하세요</p>
         <input name="id" type="text" value="<%=session.getAttribute("idfail")%>"/><br /> 
<%      
         session.removeAttribute("idfail");
         session.invalidate();
   }else{
%>         
         <input name="id" type="text" placeholder="아이디 입력"/><br /> 
<%}%>
         <input name="pwd" type="password" placeholder="비밀번호 입력" /><br />
         <input type="submit" value="로그인"><br />
      </form>
      <a href="">아이디 / 비밀번호 찾기</a><br /> <a href="signup_form.do">회원가입</a><br />
   </div>

   <%@include file="../views/layout/footer.jsp"%>
      </div>
      </div>
</body>
</html>