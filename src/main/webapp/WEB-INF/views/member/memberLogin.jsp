<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("cMid")) {
				pageContext.setAttribute("mid", cookies[i].getValue());
				break;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>memberLogin.jsp</title>
	<jsp:include page="/WEB-INF/views/include/bs5.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
  <form name="myform" method="post">
  	<table class="table table-bordered text-center">
  		<tr>
  			<td colspan="2"><font size="5">로그인</font></td>
  		</tr>
  		<tr>
  			<th>아이디</th>
  			<td><input type="text" name="mid" id="mid" value="${mid}" autofocus required class="form-control" /></td>
  		</tr>
  		<tr>
  			<th>비밀번호</th>
  			<td><input type="password" name="pwd" id="pwd" value="1234" autofocus required class="form-control" /></td>
  		</tr>
  		<tr>
  			<td colspan="2">
  				<input type="submit" value="로그인" class="btn btn-success me-2" />
  				<input type="reset" value="다시입력" class="btn btn-warning me-2" />
  				<input type="button" value="회원가입" onclick="location.href='${ctp}/member/memberJoin';" class="btn btn-primary me-2" />
  				<input type="checkbox" name="idSave" checked />아이디저장
  		</tr>
  	</table>
  
  </form>
</div>
<p><br/></p>
</body>
</html>