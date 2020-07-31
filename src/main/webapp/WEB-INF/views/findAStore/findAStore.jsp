<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>** DalDal **</title>
<!-- 발급받은 Client ID : j271ilogb7
	 비동기 방식으로, 지정한 콜백 함수를 호출함 -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=j271ilogb7&callback=initMap"></script>
<link rel="stylesheet" type="text/css" href="resources/css/findAStore.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/findAStore.js"></script>
</head>
<body>
<div align="center" id="wrap">

	<!-- 지도 API를 담을 div -->
	<div id="map">
		<div class="map_wrap">
			<div id="menu_wrap" class="bg_white">
				<div class="container">
					<ul class="tabs">
						<li class="tab-link current" data-tab="tab-1">매장명</li>
						<li class="tab-link" data-tab="tab-2">주소</li>
					</ul>
					<div id="tab-1" class="tab-content current">
						<div class="search">
							<input type="text" placeholder="검색창">
							<img src="resources/image/search_icon.png" alt="search_icon" id="searchBtn">
						</div>
						<br><hr>
						<div class="tab_content_css" align="left">
							<c:forEach var="list" items="${storeList}">
								<table class="tab_table">
									<tr>
										<td rowspan="2" width="70px">
											<img src="${list.fruploadfile}" width="60px" align="middle">
										</td>
										<td>
											<a onclick="javascript:;initMap(${list.frkname}&${list.llname}&${list.latvalue}&${list.lngvalue})>${list.frkname}&nbsp;${list.llname}</a>
										</td>
									</tr>
									<tr>
										<td>
											${list.lladdr}
										</td>
									</tr>							
								</table>
								<hr>
							</c:forEach>	
						</div>
					</div>
					<div id="tab-2" class="tab-content">
						<div class="search">
							<input type="text" placeholder="검색창">
							<img src="resources/image/search_icon.png" alt="search_icon" id="searchBtn">
						</div>
						<br><hr>
						<div class="tab_content_css">
							검색창에<br>
							주소를 입력하면<br>
							검색어=keyword를 받아서<br>
							서치 돌리고<br>
							결과를 여기에<br>
							표시해<br>
							줍니다<br>
							카페아이콘 frkname llname<br>
							lladdr<br>
							폰트 사이즈 줄이기<br>		
						</div>
					</div>
				</div>
				<!-- ------------------- -->
		        <form onsubmit="searchPlaces(); return false;">
				</form>
			</div>
		</div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
	</div>
	<!-- 프랜차이즈 카페 목록 나열 -->
<%-- 	<div id="franchiseList">
		<c:forEach var="list" items="${franchiseList}">
			<a href="javascript:void(0);" id="${list.frcode}" onclick="initMap(id)">${list.frkname}</a>&nbsp;&nbsp;&nbsp;
		</c:forEach>
	</div> --%>
	<input type="button" value="reset" onclick="initMap()">
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>