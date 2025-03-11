<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>uuidTest.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs5.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>UUID 연습</h2>
  <form method="post">
  	<input type="submit" value="UUID생성" class="btn btn-success"/>
  	<input type="hidden" name="uid" value="${uid}<br>" />
  </form>
  <hr/>
  반환된 UUID 값 : ${uuid}
</div>
<p><br/></p>
</body>
</html>