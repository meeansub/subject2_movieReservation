<%--
  Created by IntelliJ IDEA.
  User: minsub
  Date: 2021-04-25
  Time: 오후 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    int row = (Integer) request.getAttribute("seatRow");
    int column = (Integer) request.getAttribute("seatCol");

    pageContext.setAttribute("row", row);
    pageContext.setAttribute("column", column);
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/book.css">
    <link rel="stylesheet" href="/css/modal.css">
    <script src="/js/book.js"></script>
    <script src="/js/modal.js"></script>
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
                </div>
                <div class="row" id="bookTime">
                    <span>상영 시간: ${bookMovieInfo.time}</span>
                </div>
                <div class="seat-info">
                    <h4>좌석 선택</h4>
                    총 좌석 : ${bookMovieInfo.screenRoom.seats} / 남은 좌석 : ${remainSeats}
                    <table>
                        <tbody>
                        <thead>
                        <th colspan="14">SCREEN</th>
                        </thead>
                        <%
                            for (int i = 0; i < row; i++) {
                        %>
                        <tr>
                            <%
                                for (int j = 0; j < column; j++) {
                            %>
                            <td class="seat" id="<%=(char)(i+65)%>-<%=j+1%>">
                                <%=(char) (i + 65)%>-<%=j + 1%>
                            </td>
                            <%
                                }
                            %>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<div class="black_bg"></div>
<div class="modal_wrap">
    <div class="modal_close">
        <a href="#">close</a>
    </div>
    <div>
        <form action="createBook" method="post">
            <span>예매 내용</span>
            <p>상영관 :${bookMovieInfo.screenRoom.name}</p>
            <p>제목 : ${bookMovieInfo.movie.title}</p>
            <p>상영시간 : ${bookMovieInfo.time}</p>
            <p>좌석:<input type="text" id = "seatNumber" name = "seatNumber" readonly></p>

            <p>예약자 전화번호:<input type="tel" name="phone"> </p>

            <input type="hidden" name = "scheduleId" value="${bookMovieInfo.scheduleId}">
            <input type="hidden" name = "screenRoom" value="${bookMovieInfo.screenRoom.name}">
            <input type="hidden" name = "movieTitle" value="${bookMovieInfo.movie.title}">
            <input type="hidden" name = "price" value="${bookMovieInfo.movie.price}">
            <button type="submit">예매하기</button>

        </form>

    </div>
</div>


<script>
    const seats = document.querySelectorAll('.seat');
    document.querySelector('.modal_close').addEventListener('click', offClick);


    [].forEach.call(seats, function (item) {
        item.addEventListener('click', function (event) {
            console.log(event.target.id);
            document.getElementById("seatNumber").value = event.target.id;
            onClick();

        });
    });

    function onClick() {
        document.querySelector('.modal_wrap').style.display = 'block';
        document.querySelector('.black_bg').style.display = 'block';
    }

    function offClick() {
        document.querySelector('.modal_wrap').style.display = 'none';
        document.querySelector('.black_bg').style.display = 'none';
    }


</script>
</body>
</html>
