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
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/pro_css.css">
    <title></title>
</head>
<body>
	<jsp:include page="header.jsp" />

    <div class="content" id="c1">
        <div class="mainEx">
            <p>
                <span id="sml">수학을 쉽게! 스마트하게!</span><br>
                <span id="big">대한민국 1등 수학문제은행,</span><br>
                <span id="big">매쓰이지 Math Easy</span><br>
            </p>
        </div>
    </div>
    <div class="content" id="c2">
        <!-- 숫자 인덱스	 -->
        <div class="num-container" id="num-container">
            <div class="num-item">
                <span id="sml" class="num-title">세부유형</span><br>
                <span id="sml"><span class="nums" data-count="54022" id="big">50000</span> 개</span><br>
            </div>
            <div class="num-item">
                <span id="sml" class="num-title">업데이트 문항 수</span><br>
                <span id="sml">월 <span class="nums" data-count="6000" id="big">5500</span> 개</span><br>
            </div>
        </div>
    </div>

    <div class="content" id="c3"></div>
    
    <jsp:include page="footer.jsp" />
    
   

<script src="resources/js/pro.js"></script>

</body>
</html>


