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
	<link rel="stylesheet" type="text/css" href="resources/css/productStyle.css">
	
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
	<!-- <link rel="stylesheet" href="resources/modal/css/bootstrap.min.css"> -->
	
	<!-- [IE 9] -->
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
	
	<style type="text/css">
	#wrap {
    padding-top: 280px;
	}
	
	/* 홈페이지로 가기 */
	/* .plist img:hover {
		position: absolute;
		display: block;
		top: 0;
		left: 0;
		width: 250px;
		height: 250px;
		background-image: url('../image/home_move.png');
	} */

	/* 
	img {
    display: block;
    width: 255px;
    height: 300px;
    margin: 0 0 15px;
    position: relative;
	} */

	/* #url img::after {
    display: block;
    content: "자세히보기";
    width: 156px;
    height: 156px;
    position: absolute;
    margin: -78px 0 0 -78px;
    filter: alpha(opacity=0);
    opacity: 0;
    transition: all .2s;
    text-indent: -9999px;
    z-index: 10;
	} */
	</style>
</head>
<body>
<main>
	<div class="services">
		<div id = "wrap">
			<div id="product_box" align="center">
				
				<div class="container">
					<nav id="topMenu" > <!-- topMenu -->
						<ul>
							<c:forEach var="list" items="${menulist}">
								<c:if test="${list.mucategory=='coffee'}">
									<li>
										<a class="menuLink" href="categorylist?mubcode=${list.mubcode}&mucategory=${list.mucategory}">커피</a>
									</li>
								</c:if>
								
								<c:if test="${list.mucategory=='dessert'}">
									<li>
										<a class="menuLink" href="categorylist?mubcode=${list.mubcode}&mucategory=${list.mucategory}">디저트</a>
									</li>
								</c:if>
								
								<c:if test="${list.mucategory=='drink'}">
									<li>
										<a class="menuLink" href="categorylist?mubcode=${list.mubcode}&mucategory=${list.mucategory}">음료</a>
									</li>
								</c:if>
								
								<c:if test="${list.mucategory=='food'}">
									<li>
										<a class="menuLink" href="categorylist?mubcode=${list.mubcode}&mucategory=${list.mucategory}">음식</a>
									</li>
								</c:if>
								
								<c:if test="${list.mucategory=='special'}">
									<li>
										<a class="menuLink" href="categorylist?mubcode=${list.mubcode}&mucategory=${list.mucategory}">스페셜</a>
									</li>
								</c:if>	
							</c:forEach>
						</ul>
					</nav>
		
					<div class="container">
						<div class="main">
							<div class="productList">
								<c:forEach var="list" items="${pdlist}">
									<div class="plist" id="plist">
										<div class="icon-box icon-box-pink">
											
												<a href ="${list.pdurl}" target="_blank">
													<img src="${list.pduploadfile}" width="200" height="200" class="change"
														onmouseover="this.src='resources/image/home_move.png'" onmouseout="this.src='${list.pduploadfile}'">
												</a>
								
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
								
											<div class="namelist">
												<div class="fname">
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
												</div>
											
												<p class="pname">${list.pdname}</p>
												<p class="prname">${list.price} 원</p>
											</div>
								
											<div>
											<c:forEach var="hashtag" items="${fn:split(list.hashtag,'#')}">
							            		<a href="hashtagList?keyword=${hashtag}">
							            			<span class="hashtagsplit"> #${hashtag}</span>
							            		</a>
							            	</c:forEach>
				            				</div>
				            				
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
							</c:forEach>
							</div>
							
							
							<!--
			      이전 버튼이 클릭가능한 조건이면, a태그를 이용해 이전 버튼이 뜨도록 하고, href 로 링크를 걸되
			      아까 만든 makeQuery 메서드를 이용해서 쿼리문자열을 만들어 줍니다.
			      ?page=어쩌고&perPageNum=어쩌고 이 부분을 생성해서 넣게 되는데 단 이전 버튼을 클릭하면
			      현재 페이지가 시작페이지의 -1 이 되도록 되어야 함으로 그 부분만 신경써 주면 됩니다.
		   -->
		   
		<div class="pagingWrap" style="position:relative;">
		
			<c:if test="${pageMaker.start}">
         		<a href="listPage${pageMaker.makeQuery(1)}" id="paging_num">
	          	처음
         		</a>
 	  		</c:if>
	  
	  		<c:if test="${pageMaker.prev}">
          		<a href="listPage${pageMaker.makeQuery(pageMaker.startPage-1)}">
          			<img src="resources/image/prev.jpg" class="npn_img" id="paging_num">
         		</a>
	  		</c:if>
		
		  <!--
		      [1][2][3]....[10] 이 부분을 삽입하는 부분이다. jstl 이용해for문을 돌면서 startPage ~ endPage까지
		      	표시해주되, a태그 눌렀을 때 이동하는 page 부분에 index 지정하는 부분을 유의
		   -->
		  <c:forEach var="index" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<c:choose>
				<c:when test="${pageMaker.page == index}">
					<span id="paging_numClick">${index}</span>
				</c:when>
				<c:otherwise>
				 	<a href="listPage${pageMaker.makeQuery(index)}" id="paging_num">${index}</a>
				</c:otherwise>
			</c:choose>
		  </c:forEach>
		
		  <!--
	                  이전버튼과 마찬가지로 다음버튼을 끝 페이지보다1개 큰게 현재 페이지가 되도록 makeQuery에 page를 넣어줍시다.
	      -->
		  <c:if test="${pageMaker.next}">
	          <a href="listPage${pageMaker.makeQuery(pageMaker.endPage+1)}">
	          	<img src="resources/image/next.jpg" class="npn_img" id="paging_num">
	          </a>
		  </c:if>

		  <c:if test="${pageMaker.end}">
	          <a href="listPage${pageMaker.makeQuery(pageMaker.tempEndPage)}" id="paging_num">
	          	끝
	          </a>
		  </c:if>
		  
		</div>   
							
							
							
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="../common/footer.jsp" %>
</body>
</html>