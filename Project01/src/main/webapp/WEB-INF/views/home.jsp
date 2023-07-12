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
    <script src="resources/js/pro.js"></script>
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/pro_css.css">
    <title></title>
</head>
<body>
    <header>
        <img src="resources/images/logoback.png" width="150" height="60" alt="">
        <nav class="navi">
            <ul>
                <li><a href="https://naver.com">지원교재</a></li>
                <li><a href="#">요금안내</a></li>
                <li><a href="#">사용가이드</a></li>
                <li><a href="#">리뷰게시판</a></li>
                <li><a href="#">고객센터</a></li>
                <li><a href="#" id="buttonlog">로그인</a></li>
            </ul>
        </nav>
    </header>

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
    
    <script src="resources/js/count.js"></script>

    <div class="content" id="c3"></div>
    
    <footer class="content" id="c4">
        <div>
            <div class="address">
                <p>
                    <strong>고객센터 2023-0605</strong>
                    <span>(평일10시~19시/점심시간13~14시)</span> |
                    <strong>이메일 contact@matheasy.com</strong> |
                    <strong>마케팅 제휴 mkt@matheasy.com</strong> 
                </p>
                <p>
                    <strong>비지니스 제휴 matheasy_sales@matheasy.com</strong>
                </p>
            </div>
            <div class="address">
                <p>
                    <span>(주)매쓰이지 | 대표자 정웅기 | 사업자등록번호 000-00-00000 | 대전시 동구 가양동 우암로 352-21 4층 스마트소프트웨어과(나래관)</span>
                </p>
                <a href="#">서비스 이용약관</a> <span class="addservice">|</span> <a href="#">개인정보 처리방침</a>
            </div>
        </div>
        <div class="copy">
                COPYRIGHT 2023 BY MATHEASY. ALL RIGHTS RESERVED.
        </div>
    </footer>
</body>
</html>


