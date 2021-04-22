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
<h2> 영화 리스트</h2>
<c:forEach var="movie" items="${movieList}">
  ${movie.title}
  ${movie.price}
</c:forEach>

</body>
</html>
