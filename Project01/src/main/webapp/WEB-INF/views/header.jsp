<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://code.jquery.com/jquery-latest.js"></script>   
    <script src="${pageContext.request.contextPath}/resources/js/pro.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pro_css.css">
</head>
<body>
    <header>
        <a href="/matheasy/main"><img src="${pageContext.request.contextPath}/resources/images/logoback.png" width="150" height="60" alt=""></a>
        <c:if test="${sessionScope.member == null}">
        <nav class="navi">
            <ul>
                <li><a href="${pageContext.request.contextPath}/snlist">지원교재</a></li>
                <li><a href="${pageContext.request.contextPath}/price">요금안내</a></li>
                <li><a href="${pageContext.request.contextPath}/reviewList">리뷰게시판</a></li>
                <li><a href="${pageContext.request.contextPath}/cs">고객센터</a></li>
                <li><a href="${pageContext.request.contextPath}/login" id="buttonlog">로그인</a></li>
            </ul>
        </nav>
        </c:if>
        <c:if test="${sessionScope.member != null}">
        <nav class="navi">
            <ul>
               <li><a href="${pageContext.request.contextPath}/snlist">지원교재</a></li>
                <li><a href="${pageContext.request.contextPath}/price">요금안내</a></li>
                <li><a href="${pageContext.request.contextPath}/reviewList">리뷰게시판</a></li>
                <li><a href="${pageContext.request.contextPath}/cs">고객센터</a></li>
                <li><a href="${pageContext.request.contextPath}/logout" id="buttonlog">로그인</a></li>
            </ul>
        </nav>
        </c:if>
    </header>
</body>
</html>


