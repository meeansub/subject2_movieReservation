<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2021-04-27
  Time: 오전 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>예매 확인</h3>
<p>예매시 등록한 전화번호 입력</p>
<form action="/bookResultList" method="get">
<input type="text" name="phoneNumber">
<button type="submit" id="checkReserve">예매확인</button>
</form>

<c:forEach var="reserved" items="${reservationList}">
    ${reserved.phoneNumber}
    ${reserved.screenRoom}
    ${reserved.movieTitle}
    ${reserved.seatNumber}
    ${reserved.schedule.time}
</c:forEach>
</body>
</html>
