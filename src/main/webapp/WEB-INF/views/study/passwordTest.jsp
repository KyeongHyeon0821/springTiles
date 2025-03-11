<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>passwordTest1.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs5.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>암호화(SHA-256) 연습</h2>
  <div>
  	SHA256 암호화 방식은 SHA(Secure Hash Algorithm) 알고리즘의 한 종류로, 256비트로 구성되며, 16진수 문자 64자리로 구성된다.<br>
  	SHA256안 단방향 암호화 방식으로 복호화가 불가능하고, 속도가 빠르다는 장점이 있다.
  </div>
  <form method="post">
    <div class="input-group">
      <div class="input-group-text">값</div>
      <input type="text" name="pwd" id="pwd" class="form-control" autofocus required />
      <div class="input-group-append">
        <input type="submit" value="비밀번호암호화" class="btn btn-success"/>
      </div>
    </div>
  </form>
  <hr/>
  <c:if test="${!empty pwd}">
    전송된 암호값 : ${pwd} <br/>
    변환된 암호값 : ${encPwd}<br/>
    DB에 저장값 : ${dbPwd}
  </c:if>
</div>
<p><br/></p>
</body>
</html>