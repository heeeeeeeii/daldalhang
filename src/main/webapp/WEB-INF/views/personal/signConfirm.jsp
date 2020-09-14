<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <!-- <meta charset="UTF-8"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>인증메일 발송</title>
    <link rel="stylesheet" href="resources/css/signConfirm.css">
    <link rel="stylesheet" href="resources/css/signSuccess.css">
</head>
<body>
<div class="wrap">
    <div id="esBox">
        <p class="esMessage">으로 전송된 이메일을 확인하여</p>
        <p class="esMessage">인증메일의 링크를 누르면 회원가입이 완료됩니다.</p>
        
        <div id="esBtnBox">
                <a href="home">
                	<div class="esBtn" style="cursor: pointer;">
                		<p class="esBtnText">메인으로 이동</p>
                	</div>
                </a>
        </div>
    </div>
</div>
</body>
<%@ include file="../common/footer.jsp"%>
</html>