<%--
  Created by IntelliJ IDEA.
  User: minsub
  Date: 2021-04-25
  Time: 오후 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/movie.css">
</head>
<body>
<h2>예약 하기</h2>
<div class="container">
    <section>
        <div class="row">
            <div class="bookMovieInfo">
                <div class="row">
                    <img src="/resources/poster/${bookMovieInfo.movie.title}.jpg" class="poster" alt="movie poster">
                </div>
                <div class="row">
                    <div class="col" id="movieTitle">
                        ${bookMovieInfo.movie.title}
                    </div>
                </div>
                <div class="row">
                    <div class="col" id="screenName">
                        상영관 : ${bookMovieInfo.screenRoom.name}
                    </div>
                    <div class = "col" id = "seat">
                        총 좌석 : ${bookMovieInfo.screenRoom.seats} / 남은 좌석 :
                    </div>
                </div>
                <br/>
                <div class="row" id = "bookTime">
                    <span>상영 시간: ${bookMovieInfo.time}</span>
                </div>
                <br/>
                <div id = "chocieSeat">
                    <h3>좌석 선택</h3>
                </div>
            </div>
        </div>
    </section>
</div>

</body>
</html>
