<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>냠냠</title>
</head>
<body>
<div id="friendlist">
    <table border="1">
        <tr>
            <th>구분</th>
            <th>이름</th>
            <th>나이</th>
            <th>주소</th>
            <th>이미지</th>
            <th>제거</th>
        </tr>


        <c:forEach items="${listuser}" var="user">
            <c:set var="i" value="${i+1}"/>
            <tr>
                <td><c:out value="${i}"/></td>
                <td><c:out value="${user.userName}"/></td>
                <td><c:out value="${user.userAge}"/></td>
                <td><c:out value="${user.userAddress}"/></td>
                <td><img src="/images/${user.userImage}" width="100" height="100"></td>
                <td><button data-pid="${user.userName}">제거</button></td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
