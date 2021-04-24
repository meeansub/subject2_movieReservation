<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2021-04-22
  Time: 오후 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container">
    <section>
        <h2> 상영중인 영화</h2>
        <div class="row">
            <c:forEach var="movieSchedule" items="${movieSchedules}">
                <div class="movieInfo">
                    <div class="row">
                        <div class="col"><h3>${movieSchedule.screenRoom.name}</h3></div>
                    </div>
                    <div class="row">
                        <img src="#" class="rounded" alt="movie poster" width="300" height="300">
                    </div>
                    <div class="row">
                        <div class="col"> ${movieSchedule.title}</div>
                    </div>
                    <div class="row">
                        <c:forEach var="schedule" items="${movieSchedule.schedules}">
                            <button> ${schedule.time} </button>
                        </c:forEach>
                    </div>
                </div>
                <br/>
            </c:forEach>
        </div>
    </section>
</div>
</body>
</html>
