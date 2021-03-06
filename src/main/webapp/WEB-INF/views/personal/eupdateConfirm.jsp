<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>    
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
	<div id="scWrapper" class="wrap">
	<hr>
    	<div id="scBoxes">
        	<p class="scMessage1">인증메일을 전송하였습니다.</p>
        	<p class="scMessage2">인증메일의 링크를 누르면 이메일 주소 변경이 완료됩니다.</p>
        
	        <div id="ssBtnBox">
				<a href="home">
					<div class="ssBtn">
						<p class="ssBtnText">메인으로 이동</p>
					</div>
				</a>
	        </div>
    	</div>
	</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>