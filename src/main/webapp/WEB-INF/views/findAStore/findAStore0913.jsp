<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>** DalDal **</title>
	<!-- 발급받은 Naver Map API Client ID : j271ilogb7
	 	   비동기 방식으로, 지정한 콜백 함수를 호출함 -->
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=j271ilogb7&callback=initMap"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/findAStore.css">
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/findAStore.js"></script>
	
	<style type="text/css">
	.services {
    /* padding-bottom: 60px; */
    padding-bottom: 0;
	}
	
	@media (min-width: 768px){
		#map {
	    width: 690px;
	    height: 900px;
		}
	}
	
	#map{ 
		width:1200px;height:600px;
	}
	</style>
</head>
<body>
<main id="main">
	<section class="services">
		<div class="container">
			<!-- 지도 API를 담을 div -->
			<div id="map">
				<div class="map_wrap">
					<div id="menu_wrap" class="bg_white">
						<div class="container">
							<ul class="tabs">
								<li class="tab-link current" data-tab="tab-1">브랜드명</li>
								<li class="tab-link" data-tab="tab-2">매장명</li>
							</ul>
							
							<div id="tab-1" class="tab-content current">
								<div>
									<div class="searchMap">
										<input type="text" name="mapBKeyword" id="mapBKeyword"
											value="${mmap.mapBKeyword}" placeholder="브랜드명을 입력해 주세요."
											class="MapsearchInput">
									</div>
									
									<button class="searchMapBtn">
										<img src="resources/image/search.png" width="23" height="23"
											alt="search_icon" id="BSearchMapBtn">
									</button>
								</div>
								
								<br>
								<hr>
								
								<div id="mapBSearchResult" class="tab_content_css" align="left">
									<c:forEach var="list" items="${storeList}">
										<a href="javascript:void(0);"
											onclick="initMap('${list.frkname}','${list.llname}','${list.fruploadfile}',
															'${list.lladdr}','${list.latvalue}','${list.lngvalue}')">
											<table class="tab_table">
												<tr>
													<td rowspan="2" width="70px"><img
														src="${list.fruploadfile}" width="60px" align="middle">
													</td>
													<td>${list.frkname}&nbsp;${list.llname}</td>
												</tr>
												<tr>
													<td id="addr_css">${list.lladdr}</td>
												</tr>
											</table>
										</a>
										<hr>
									</c:forEach>
								</div>
							</div>
							<div id="tab-2" class="tab-content">
								<div>
									<div class="searchMap">
										<input type="text" name="mapFKeyword" id="mapFKeyword"
											value="${mmap.mapFKeyword}" placeholder="매장명을 입력해 주세요."
											class="MapsearchInput">
									</div>
									<button class="searchMapBtn">
										<img src="resources/image/search.png" width="23" height="23"
											alt="search_icon" id="FSearchMapBtn">
									</button>
								</div>
								<br>
								<hr>
								<div id="mapFSearchResult" class="tab_content_css" align="left">
									<c:forEach var="list" items="${storeList}">
										<a href="javascript:void(0);"
											onclick="initMap('${list.frkname}','${list.llname}','${list.fruploadfile}',
															'${list.lladdr}','${list.latvalue}','${list.lngvalue}')">
											<table class="tab_table">
												<tr>
													<td rowspan="2" width="70px"><img
														src="${list.fruploadfile}" width="60px" align="middle">
													</td>
													<td>${list.frkname}&nbsp;${list.llname}</td>
												</tr>
												<tr>
													<td id="addr_css">${list.lladdr}</td>
												</tr>
											</table>
										</a>
										<hr>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr>
			</div>
		</div>
	</section>
</main>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="resources/assets/vendor/jquery/jquery.min.js"></script>
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="resources/assets/vendor/php-email-form/validate.js"></script>
	<script src="resources/assets/vendor/venobox/venobox.min.js"></script>
	<script src="resources/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="resources/assets/vendor/counterup/counterup.min.js"></script>
	<script src="resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="resources/assets/vendor/aos/aos.js"></script>
	
	<!-- Template Main JS File -->
	<script src="resources/assets/js/main.js"></script> 
</body>
<%@ include file="../common/footer.jsp"%>
</html>