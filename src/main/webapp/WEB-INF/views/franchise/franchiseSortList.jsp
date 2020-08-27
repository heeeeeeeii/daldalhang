<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="resources/css/franchiseListStyle.css">
</head>
<body>
<div id = "wrap">
<div id="product_box" align="center">
	
	<div class="btn_nlist" align="left">
			<input type="button" value="브랜드 홈" class="brandHomebutton" onclick="location.href='http://localhost:8080/daldal/frlist'">
	</div>
	
	<div class="container">
	
	<div class="count">
	    <!-- 레코드의 갯수를 출력 -->
	    ${count}개의 
	    
	    <c:if test="${frcode=='A01'}">공차가</c:if>
        <c:if test="${frcode=='A02'}">던킨도너츠가</c:if>
        <c:if test="${frcode=='A03'}">뚜레쥬르가</c:if>
        <c:if test="${frcode=='A04'}">메가커피가</c:if>
        <c:if test="${frcode=='A05'}">빽다방이</c:if>
        <c:if test="${frcode=='A06'}">스타벅스가</c:if>
        <c:if test="${frcode=='A07'}">이디야가</c:if>
        <c:if test="${frcode=='A08'}">쥬씨가</c:if>
        <c:if test="${frcode=='A09'}">설빙이</c:if>
        <c:if test="${frcode=='A10'}">투썸 플레이스가</c:if>
        <c:if test="${frcode=='A11'}">파리바게뜨가</c:if>
        <c:if test="${frcode=='A12'}">파스쿠찌가</c:if>
        <c:if test="${frcode=='A13'}">흑화당이</c:if>
		있습니다.
    <br><br><br>
    </div>
				
	<!-- 2020.08.12 franchise menu 출력 -->
		<div class="menu_css">
			<c:forEach var="menu" items="${frachiseMenu}" end="5">
					<a href="franchiseSubList?frcode=${menu.frcode}&mname=${menu.mname}&mkname=${menu.mkname}">${menu.mkname}</a>
			</c:forEach>
			
			<c:forEach var="menu" items="${frachiseMenu}" begin="6">
					<a href="franchiseSubList?frcode=${menu.frcode}&mname=${menu.mname}&mkname=${menu.mkname}">${menu.mkname}</a>
			</c:forEach>
			
			<br>
			
			<hr><br>
			<c:forEach var="cpdlist" items="${cpdlist}" end="5">
					<a href="mpdlist?mucategory=${cpdlist.mucategory}&muname=${cpdlist.muname}">${cpdlist.muname}</a>
			</c:forEach>
			
			<br>
			
			<c:forEach var="cpdlist" items="${cpdlist}" begin="6">
					<a href="mpdlist?mucategory=${cpdlist.mucategory}&muname=${cpdlist.muname}">${cpdlist.muname}</a>
			</c:forEach>		
		</div>
		<br><br><br>
		<div class="container">
			<div class="main">
				<div class="productList">
						<c:forEach var="list" items="${fpdlist}">
						
						<div class = "plist">
							<p>
								<a href = "${list.pdurl}" target="_blank">
								<img src="${list.pduploadfile}" width="200" height="200">
								</a>
							</p>
							
							<c:if test="${list.frcode=='A01'}"><p class = "brand">공차</p></c:if>
				            <c:if test="${list.frcode=='A02'}"><p>던킨도너츠</p></c:if>
				            <c:if test="${list.frcode=='A03'}"><p>뚜레쥬르</p></c:if>
				            <c:if test="${list.frcode=='A04'}"><p>메가커피</p></c:if>
				            <c:if test="${list.frcode=='A05'}"><p>빽다방</p></c:if>
				            <c:if test="${list.frcode=='A06'}"><p>스타벅스</p></c:if>
				            <c:if test="${list.frcode=='A07'}"><p>이디야</p></c:if>
				            <c:if test="${list.frcode=='A08'}"><p>쥬씨</p></c:if>
				            <c:if test="${list.frcode=='A09'}"><p>설빙</p></c:if>
				            <c:if test="${list.frcode=='A10'}"><p>투썸 플레이스</p></c:if>
				            <c:if test="${list.frcode=='A11'}"><p>파리바게뜨</p></c:if>
				            <c:if test="${list.frcode=='A12'}"><p>파스쿠찌</p></c:if>
				            <c:if test="${list.frcode=='A13'}"><p>흑화당</p></c:if>
							
							<p class = "pname">${list.pdname}</p>
							<p>${list.price} 원</p>
							
							<div class = "hashtag">
				            	<c:forEach var="hashtag" items="${fn:split(list.hashtag,'#')}">
				            		<a href="hashtagList?keyword=${hashtag}">
				            			<span class = "hashtagsplit"># ${hashtag}</span>
				            		</a>
				            	</c:forEach>
				            </div>
						</div>
						</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>		
</div><hr>
<%@ include file="../common/footer.jsp" %>
</body>
</html>