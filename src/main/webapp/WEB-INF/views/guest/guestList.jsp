<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>guestList.jsp</title>
	<jsp:include page="/WEB-INF/views/include/bs5.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>방 명 록 리 스 트</h2>  
	<hr/>
	<div><img src="${ctp}/resources/images/12.jpg" width="350px"></div>
	<hr/>
</div>
<p><br/></p>
</body>
</html>