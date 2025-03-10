<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>baseLayout.jsp</title>
  <%-- <jsp:include page="/WEB-INF/views/include/bs5.jsp" /> --%>
  <script>
    if(${empty sMid}) {
    	alert("로그인후 사용하세요");
    	location.href = "${ctp}/";
    }
  </script>
</head>
<body>
<div class="text-center">
  <tiles:insertAttribute name="header" />
  <tiles:insertAttribute name="nav" />
  <div style="height:700px">
    <tiles:insertAttribute name="body" />
  </div>
  <tiles:insertAttribute name="footer" />
</div>
</body>
</html>