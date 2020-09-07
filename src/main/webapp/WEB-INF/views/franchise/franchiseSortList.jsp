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
	<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
	<!-- <link rel="stylesheet" type="text/css" href="resources/css/productStyle.css"> -->
	
	<!-- 좋아요 -->
	<script src="resources/js/likeFunc.js"></script>
	
	<!-- 상품 삭제 -->
	<script src="resources/js/productDelete.js"></script>
	
	<!-- 외부 주소 인식 안됨 -->
	<script>
	function login() {
		if (confirm("로그인 후 이용해주세요.")) {
			window.location.href ="/daldal/loginf";
		}
		return false;
	}
	</script>
	
	<script>
	$(function() {
		$(".plist").slice(0,12).show();
		$("#more_btn").click(function(e) {
			e.preventDefault();
			$(".plist:hidden").slice(0,12).show();
			if($(".plist:hidden").length==0){
				alert("마지막 상품 입니다.");
			}
		});
	});	
	</script>
	
	<style type="text/css">
	/* 프랜차이즈 메뉴 */
	#franchiseMenu  {
	margin: 30px 0;
    width: 800px;
	}
	
	#franchiseMenu  ul li {
	background: rgb(51 38 2 / 70%);
    list-style: none;
    float: left;
    line-height: 45px;
    vertical-align: middle;
    text-align: center;
    }
    
    #franchiseMenu  .menuLink {        
    color: white;   
	text-decoration: none;
    display: block;
    width: 150px;
    font-size: 15px;
    border-right: 1px solid gray;
    border-bottom: 1px solid gray;
    }
    
    #franchiseMenu  .menuLink:hover {     
	background: white;      
	color: black;    
	transition:background .5s ease;
	-webkit-transition:background .5s ease;
	border: 0;
    }
    
    #more_btn {
    border: 1px solid lightgray;
    border-radius: 20px;
    padding: 10px 40px;
    position: relative;
    font-size: 20px;
	}
	
	.more {
    width: 100%;
    height: 100%;
    display: block;
    position: inherit;
    position: relative;
    margin-bottom: 15px;
	}
	
	.pagination {
		margin: 0 auto;
	}
	
	.page {
		align-content: center;
	}
	
	.npn_img {
		margin-bottom:-10px;
	}
	
	#paging_num {
		font-size:15px;
		margin-left: 2em;
	}
	
	#paging_numClick {
		font-size:15px;
		cursor:pointer;
		color:#F1BCD5;
		margin-left: 2em;
	}
	
	.productList {
	position: relative;
    top: 100px;
	}
	
	.productList p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	}
	
	.mdwrap {
    position: relative;
    top: 30px;
    display: -webkit-inline-box;
	}
	
	.hashtagsplit {
   	color: gray;
   	margin: 0 auto;
   	position: relative;
   	top: 20px;
   	font-size: 14px;
	}
	
	.menu_css a {
    line-height: 3;
    border: 1px solid lightgray;
    border-radius: 20px;
    padding: 10px;
	}
	
	.lbutton{
	position: relative;
   	left: 70px;
	}

	.limg{
	width: 13%;
	}

	.pdurl{
	position: relative;
	}

	.namelist{
	position: relative;
   	top: 5px;
	}
	
	.fname{
	position: relative;
   	top: -10px;
	font-size: 15px;
	}

	.pagingWrap {
	margin-top: 50px;
	}

	.pname{
	font-size: 19px;
	}

	.prname{
	font-size: 17px;
	}
	
	/* 메뉴 */
	#topMenu  {
		height: 30px;
		width: 850px; 
		margin: 30px 0;
	}
	
	#topMenu  ul li {
	background: rgb(51 38 2 / 70%);
    list-style: none;
    float: left;
    line-height: 45px;
    vertical-align: middle;
    text-align: center;
    }
    
    #topMenu  .menuLink {        
    color: white;   
	text-decoration: none;
    display: block;
    width: 150px;
    font-size: 15px;
    border-right: 1px solid gray;
    }
    
    #topMenu  .menuLink:hover {     
	background: white;      
	color: black;    
	transition:background .5s ease;
	-webkit-transition:background .5s ease;
	border: 0;
    }
    
    /* 서브 메뉴 */
	#SubMenu  {
		height: 30px;
		width: 850px; 
		margin: 30px 0;
	}
	
	#SubMenu  ul li {
	background: rgb(179 153 83 / 70%);
    list-style: none;
    float: left;
    line-height: 45px;
    vertical-align: middle;
    text-align: center;
    }
    
    #SubMenu  .menuLink {           
	color: white;
	text-decoration: none;
    display: block;
    width: 150px;
    font-size: 15px;
    border-right: 1px solid gray;
    border-bottom: 1px solid gray;
    }
    
    #SubMenu  .menuLink:hover {
    background: white;           
    color: black;   
	transition:background .5s ease;
	-webkit-transition:background .5s ease;
	border: 0;
    }
    
    #hero-no-slider {
    width: 100%;
    height: 100%;
    overflow: hidden;
    position: relative;
    text-align: center;
	}
	
	#hero-no-slider::before {
    background: white;
	}
	
	#hero-no-slider p {
    color: black;
	}
	
	#productSlider {
	width: 100%;
    height: 100%;
    overflow: hidden;
    position: relative;
    text-align: center;
	}
	
	#hero-no-slider::before {
	  content: '';
	  position: absolute;
	  left: 0;
	  top: 0;
	  right: 0;
	  bottom: 0;
	}
	
	.services .description {
	}
	
	.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;}
	
	.plist {
	display: none;
    }
    
    .count {
    margin-bottom: 50px;
    }
	</style>
</head>
<body>
<main id="main">
	<section class="services">
	
		<!-- 레코드의 갯수 출력 -->
		<div class="count" align="center">
		    ${count}개의 
		    ${frkname}가(이) 있습니다.
	    </div>
		
		<div class="container">
       		<div class="row">
        		<c:forEach var="list" items="${fpdlist}">
	        			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
		            		<div class="plist">
		            			<div class="icon-box icon-box-pink">
			            		
									<div class="icon">
										<img src="${list.pduploadfile}" width="200" height="200">
									</div>
									
									<form id="form" name="form" method="post" onsubmit="return false;">
										<div class="lbutton">
											<c:choose>
												<c:when test="${logID ne null}">
													<c:if test="${list.liked=='t'}" >
														<input type="image" src="resources/image/fullheart.png" class="limg" id="${list.pdseq}" onclick="like(${list.pdseq})">
													</c:if>
													<c:if test="${list.liked!='t'}">
														<input type="image" src="resources/image/emptyheart.png" class="limg" id="${list.pdseq}" onclick="like(${list.pdseq})">
													</c:if>
												</c:when>
												<c:otherwise>
													<a onclick="login()"><img src="resources/image/emptyheart.png" class="limg"></a>
												</c:otherwise>
											</c:choose>
										</div>
									</form>	
									
									<h4 class="title">
										<c:if test="${list.frcode=='A01'}"><p>공차</p></c:if>
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
									</h4>
									
									<p class="description">
										${list.pdname}
									</p>
									
									<p class="description">
										${list.price} 원
									</p>
									
									<p class="description">
										<c:forEach var="hashtag" items="${fn:split(list.hashtag,'#')}">
						            		<a href="hashtagList?keyword=${hashtag}">
						            			<span class = "hashtagsplit"> #${hashtag}</span>
						            		</a>
					            		</c:forEach>
									</p>
									
									<c:if test="${logID == 'DalDal'}">
										<div class="mdwrap">
											<a href="pdetail?pdseq=${list.pdseq}">
												<div class = "modify">수정</div>
											</a>
			
											<a onclick="remove(${list.pdseq})">
												<div class = "delete">삭제</div>
											</a>
										</div>
									</c:if>
			           			</div>
		            		</div>
		         		</div>
         		</c:forEach>
        	</div>
        	
        	<div class="more" align="center">
	 			<a id="more_btn">+ 더 보기</a>
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
<%@ include file="../common/footer.jsp" %>
</html>