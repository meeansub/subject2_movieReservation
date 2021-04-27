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
<h2 style="text-align: center">좌석 선택</h2>
<div class="container">
    <section>
        <div class="row">
            <div class="col">
                <div class="card" style="width: 18rem;">
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
                </div>
            </div>

            <div class="col">
                총 좌석 : ${bookMovieInfo.screenRoom.seats} / 남은 좌석 : ${remainSeats}
                <div class="seat-info">
                    <table>
                        <tbody>
                        <thead>
                        <th colspan="14" style="text-align: center">SCREEN</th>
                        </thead>
                        <%
                            for (int i = 0; i < row; i++) {
                        %>
                        <tr>
                            <%
                                for (int j = 0; j < column; j++) {
                            %>
                            <td class="seat" id="<%=(char)(i+65)%>-<%=j+1%>"><%=(char) (i + 65)%>-<%=j + 1%>
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
        <button class="btn btn-secondary" onclick="location.href = '/movie/movieSchedule'">영화 선택으로</button>
    </section>
</div>

<%--modal--%>
<div class="black_bg"></div>
<div class="modal_wrap">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">예매 내용</h5>
        </div>
        <form action="createBook" method="post">
            <div class="modal-body">
                <p>상영관 :${bookMovieInfo.screenRoom.name}</p>
                <p>제목 : ${bookMovieInfo.movie.title}</p>
                <p>상영시간 : ${bookMovieInfo.time}</p>
                <p>좌석:<input type="text" id="seatNumber" name="seatNumber" readonly></p>

                <p>예약자 전화번호:<input type="tel" name="phone"></p>

                <input type="hidden" name="scheduleId" value="${bookMovieInfo.scheduleId}">
                <input type="hidden" name="screenRoom" value="${bookMovieInfo.screenRoom.name}">
                <input type="hidden" name="movieTitle" value="${bookMovieInfo.movie.title}">
                <input type="hidden" name="price" value="${bookMovieInfo.movie.price}">
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">예매하기</button>
                <button type="button" class="btn btn-primary" onclick="offClick()">취소</button>
            </div>
            <div class="modal_close">
            </div>

        </form>
    </div>
</div>
<%--</div>--%>
<%----%>

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
