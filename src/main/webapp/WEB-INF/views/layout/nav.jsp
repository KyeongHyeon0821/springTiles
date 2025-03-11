<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>nav.jsp</title>
  <%-- <jsp:include page="/WEB-INF/views/include/bs5.jsp" /> --%>
  <style>
    a {text-decoration: none; color: #fff}
  </style>
</head>
<body>
<div class="p-2" style="background-color:gray;">
  <a href="${ctp}/main/memberMain" class="text-light link-warning link-underline-opacity-0 link-underline-opacity-100-hover">홈으로</a> |
  <a href="${ctp}/tiles/guestList" class="text-light link-warning link-underline-opacity-0 link-underline-opacity-100-hover">방명록</a> |
  <a href="${ctp}/tiles/boardList" class="text-light link-warning link-underline-opacity-0 link-underline-opacity-100-hover">게시판</a> |
  <a href="${ctp}/tiles/pdsList" class="text-light link-warning link-underline-opacity-0 link-underline-opacity-100-hover">자료실</a> |
  <div class="btn-group">
  	<button type="button" onclick="location.href='${ctp}/tiles/myPage'" class="btn btn-success">MyPage</button>
  	<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">Study</button>
  	<ul class="dropdown-menu">
      <li><a class="dropdown-item" href="${ctp}/tiles/passwordTest">SHA256암호화</a></li>
      <li><a class="dropdown-item" href="${ctp}/tiles/uuidTest">UUID 생성</a></li>
    </ul>
  </div> |
  <a href="${ctp}/tiles/memberLogout" class="text-light link-warning link-underline-opacity-0 link-underline-opacity-100-hover">로그아웃</a> |
</div>
</body>
</html>