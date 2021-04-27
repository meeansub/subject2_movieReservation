<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2021-04-22
  Time: 오후 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="/css/schedule.css"/>
    <title>Title</title>
    <%-- boot-strap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
            integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
            integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
            crossorigin="anonymous"></script>

</head>

<body>

<div class="wrap">
    <div class="header">상영시간표</div>
    <div class = "movieInfo">
    <div class="row">
        <c:forEach var="movieSchedule" items="${movieSchedules}">
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="/resources/poster/${movieSchedule.title}.jpg" class="card-img-top">
                    <div class="card-body">
                        <div class="card-title">${movieSchedule.title}</div>
                        <p class="card-text"> ${movieSchedule.screenRoom.name} / 총 좌석
                            : ${movieSchedule.screenRoom.seats}</p>

                        <span>예약가능시간</span>
                        <c:forEach var="schedule" items="${movieSchedule.schedules}">
                            <form action="/book/bookDetail" method="get">
                                <input type="hidden" name="scheduleId" value="${schedule.scheduleId}">
                                <button type="submit" class="btn btn-info">${schedule.time}</button>
                            </form>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    </div>
    <button type="button" class="btn btn-secondary" onclick="location.href='/'">처음으로</button>
    <br/>
    <br/>
    <br/>
</div>


</body>
</html>
