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
    <script src="/js/movie.js"></script>
</head>
<body>

<div class="container">
    <section>
        <h2> 상영중인 영화</h2>

        <c:forEach var="movie" items="${movieList}">
        <div class="p-4 my-4 border">
            <div class="row">
                <img src="#" class="rounded" alt="movie poster" width="300" height="300">
            </div>
            <div class="row">
                <div class="col">${movie.title}</div>
            </div>
            <div class="row">
                <div class="col">${movie.price}</div>
            </div>
            <div class="row">
                <div class="col">
                    <button>예매하기</button>
                </div>
            </div>
        </div>
        <br/>
        </c:forEach>
</div>
</body>
</html>
