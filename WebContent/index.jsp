<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/Haruword/page/errorPage.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>::: 하루, 단어 :::</title>
    <script src="./js/jquery-2.1.1.min.js"></script>
    <script src="./js/jquery-ui.min.js"></script>
    <script src="./js/jquery.easing.1.3.js"></script>
    <script src="./js/gnb_dropdown.js"></script>
    <script src="./js/main_slidefadein.js"></script>    
    <script src="./js/wordlist.js"></script>
    <script src="./js/main_TWD.js"></script>
    <link rel="stylesheet" href="./css/pc960/main_common.css">
    <link rel="stylesheet" href="./css/pc960/main_contents.css">
    <link rel="stylesheet" href="./css/Mobile/mobile_common.css">
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story:400" rel="stylesheet">
</head>
<body>
    <!-- haru header -->
    <header>
        <div id="haru_header_upper" class="header_upper_index">
            <div id="haru_header_upper_wrap">
                <a href="./index.jsp"><title id="haru_title">하루, 단어</title></a>
                <div id="haru_mobile_sidemenu_toggle" class="haru_mobile"><img class="sidemenuon" src="/Haruword/img/sidemenuon.png" alt="사이드메뉴 보이기"><img class="sidemenuoff" src="/Haruword/img/sidemenuoff.png" alt="사이드메뉴 숨기기"></div>
            </div>
        </div>
        <div id="haru_header_bottom" class="haru_pc">
            <div id="haru_header_bottom_wrap">
                <!-- GNB -->
                <nav id="haru_gnb">
                    <ul>
                        <li id="haru_LRN" class="dropLRN gnblist"><a href="#">외우자</a></li>
                        <li id="haru_COM" class="dropCOM gnblist"><a href="#">커뮤니티</a></li>
                        <li id="haru_MYP" class="dropMYP gnblist"><a href="#">My 페이지</a></li>
                        <li id="haru_INF" class="dropINF gnblist"><a href="#">페이지 정보</a></li>
                    </ul>
                </nav>                
                <!-- //GNB -->
                <!-- Signinupbutton -->
                <c:choose>
                	<c:when test="${loginUser.userid!=null}">	                
	           			<div id="haru_MEM">${loginUser.name}(${loginUser.nickname})</div>
	                </c:when>
	                <c:otherwise>
		           		<div id="haru_signup">
		                    <ul>
		                        <li class="sign"><a href="#" class="openModal" id="loginBtn0">로그인</a></li>
		                        <li class="sign"><a href="#" class="bar openModal" id="termsBtn0">회원가입</a></li>
		                    </ul>
		                </div>
	           		</c:otherwise>
	           	</c:choose>
                <!-- //Signinupbutton -->
            </div>            
        </div>           
    </header>
    <!-- Dropdown Menu -->
    <div id="haru_LRN_dropdown" class="haru_pc dropdown">
        <ul class="dropLRN">
            <li><a href="./page/LRN/hrd.jsp">하루단어</a></li>
            <li><a href="./page/LRN/exam.jsp">단어검정</a></li>
            <li><a href="./page/LRN/oboeru4.jsp">단어 List</a></li>
        </ul>
        <div class="menu_description">
            <p class="menu_description_subject">외우자</p>
            <p class="menu_description_contents">하루, 단어는 외우자의 카테고리 안에서 여러분들에게 스마트한 학습방법을 제공하고자 합니다.</p>
        </div>
    </div>
    <div id="haru_COM_dropdown" class="haru_pc dropdown">
        <ul class="dropCOM">
            <li><a href="./page/COM/notice.jsp">공지사항</a></li>
            <li><a href="./page/COM/tip.jsp">TIP 게시판</a></li>
            <li><a href="./page/COM/stats.jsp">단어통계</a></li>
        </ul>
        <div class="menu_description">
            <p class="menu_description_subject">커뮤니티</p>
            <p class="menu_description_contents">공지사항 및 회원 간 단어 암기 방법을 공유할 수 있습니다.</p>
        </div>
    </div>
    <div id="haru_MYP_dropdown" class="haru_pc dropdown">
        <c:choose>
                <c:when test="${loginUser.userid!=null}">	                
	           		<ul class="dropMYP">
            			<li><a href="./page/MYP/wrongAnswerNotes.jsp" class="wan">오답노트</a></li>
            			<li><a href="./page/MYP/mynote.jsp">내 단어장</a></li>
            			<li><a href="./page/MYP/editInfo_checkPW.jsp">회원정보변경</a></li>
        			</ul>
	            </c:when>
	            <c:otherwise>
		           	<ul class="dropMYP">
                		<li><a href="#" class="openModal" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">오답노트</a></li>
                		<li><a href="#" class="openModal" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">내 단어장</a></li>
                		<li><a href="#" class="openModal" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">회원정보변경</a></li>
            		</ul>
	            </c:otherwise>
	    </c:choose>
        <div class="menu_description">
            <p class="menu_description_subject">My 페이지</p>
            <p class="menu_description_contents">학습하면서 틀린 단어, 어려웠던 단어 등을 조회합니다.</p>
        </div>
    </div>
    <div id="haru_INF_dropdown" class="haru_pc dropdown">
        <ul class="dropINF">
            <li><a href="./page/INF/aboutus.jsp" class="aboutus">소개</a></li>
            <li><a href="./page/INF/FAQ.jsp">FAQ</a></li>
        </ul>
        <div class="menu_description">
            <p class="menu_description_subject">페이지 정보</p>
            <p class="menu_description_contents">제작자 및 관리자를 소개합니다.</p>
        </div>
    </div>
    <c:if test="${loginUser.userid!=null}">
	    <div id="haru_MEM_wrap">                
		<div id="haru_MEM_dropdown" class="haru_pc dropdown2">
	        <ul class="dropMEM">
	            <li><a href="/Haruword/MemberServlet?command=member_logout">로그아웃</a></li>
	        </ul>
	        <div class="menu_description">
	            <p class="menu_description_subject2">접속 ID</p>
	            <p class="menu_description_contents">${loginUser.userid}</p>
	        </div>
	    </div>
	    </div>
	</c:if> 
    <!-- //Dropdown Menu -->
    <!-- Mobile side Menu -->
    <div id="haru_sidemenu" class="sidemenu haru_mobile">
            <div id="haru_header_upper_wrap_sdm">                
                    <div id="haru_mobile_sidemenu_toggle_sdm" class="haru_mobile"><img class="sidemenuoff" src="./img/sidemenuoff.png" alt="사이드메뉴 숨기기"></div>
            </div>
        <!-- <div id="haru_sidemenu_list"> -->
        
        	<c:choose>
                <c:when test="${loginUser.userid!=null}">	                
		           	<div id="haru_signup_mobile">
		                <ul class="signup_wrap">
		                    <li class="sign"><a class="memint" href="#">안녕하세요.<br>${loginUser.name}(${loginUser.nickname})님.</a></li>
		                </ul>
	            	</div>
	            </c:when>
	            <c:otherwise>		        
	            	<div id="haru_signup_mobile">
		                <ul class="signup_wrap">
		                    <li class="sign"><a href="#" class="openModal" id="loginBtn0">로그인</a></li>
		                    <li class="sign"><a href="#" class="openModal" id="forgotIDBtn0" style="display: none;">아이디찾기</a></li>
		                    <li class="sign"><a href="#" class="openModal" id="forgotPWBtn0" style="display: none;">비밀번호찾기</a></li>
		                    <li class="sign"><a href="#" class="bar openModal" id="termsBtn0">회원가입</a></li>
		                </ul>
	            	</div>
	           	</c:otherwise>
	        </c:choose>
            
            <ul class="sideLRN">
                <li><a href="#" class="sidelist_subject">외우자</a></li>
                <li><a href="./page/LRN/hrd.jsp" class="sidelist_list">하루단어</a></li>
                <li><a href="./page/LRN/exam.jsp" class="sidelist_list">단어검정</a></li>
                <li><a href="./page/LRN/oboeru4.jsp" class="sidelist_list">단어 List</a></li>
            </ul>
            <ul class="sideCOM">
                <li><a href="#" class="sidelist_subject">커뮤니티</a></li>
                <li><a href="./page/COM/notice.jsp" class="sidelist_list">공지사항</a></li>
                <li><a href="./page/COM/tip.jsp" class="sidelist_list">TIP 게시판</a></li>
                <li><a href="./page/COM/stats.jsp" class="sidelist_list">단어통계</a></li>
            </ul>
            <c:choose>
                <c:when test="${loginUser.userid!=null}">	                
	           		<ul class="sideMYP">
                		<li><a href="#" class="sidelist_subject">My 페이지</a></li>
                		<li><a href="./page/MYP/wrongAnswerNotes.jsp" class="sidelist_list">오답노트</a></li>
                		<li><a href="./page/MYP/mynote.jsp" class="sidelist_list">내 단어장</a></li>
                		<li><a href="./page/MYP/editInfo_checkPW.jsp" class="sidelist_list">회원정보변경</a></li>
            		</ul>
	            </c:when>
	            <c:otherwise>
		           	<ul class="sideMYP">
                		<li><a href="#" class="sidelist_subject">My 페이지</a></li>
                		<li><a href="#" class="openModal sidelist_list" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">오답노트</a></li>
                		<li><a href="#" class="openModal sidelist_list" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">내 단어장</a></li>
                		<li><a href="#" class="openModal sidelist_list" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">회원정보변경</a></li>
            		</ul>
	            </c:otherwise>
	        </c:choose>
            <ul class="sideINF">
                <li><a href="#" class="sidelist_subject">페이지 소개</a></li>
                <li><a href="./page/INF/aboutus.jsp" class="sidelist_list">소개</a></li>
                <li><a href="./page/INF/FAQ.jsp" class="sidelist_list">FAQ</a></li>
            </ul>
            <c:if test="${loginUser.userid!=null}">
            <ul class="sideMEM">
                <li><a href="#" class="sidelist_subject">접속ID : ${loginUser.userid}</a></li>
                <li><a href="/Haruword/MemberServlet?command=member_logout" class="sidelist_list">로그아웃</a></li>
            </ul>
            </c:if>
        <!-- </div> -->
    </div>
    <!-- //Mobile side Menu -->
    <!-- Contents here !!!!!!!! -->
    <section id="MAI_content">
        <div id="MAI_content_wrap">
            <article id="MAI_TWD" class="haru_pc">
                <ul id="MAI_TWD_wrap">
                    <li>
                        <div class="coin_flip">
                            <div id="MAI_TWD_coin_front" class="TWD">
                                <div id="MAI_TWD_coin_front_description">
                                    <h4>오늘의<br>단어는?</h4>
                                    <p>확인 >></p>
                                </div>
                            </div>
                            <div id="MAI_TWD_coin_back" class="TWD">
                                <div id="MAI_TWD_coin_back_description">
                                    <h4 id="TWD_kanji"></h4>
                                    <h4 id="TWD_yomigana"></h4>
                                    <p id="TWD_korean"></p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </article>
            <article id="MAI_TWD_mobile" class="haru_mobile">
                <ul id="MAI_TWD_mobile_wrap">
                    <li>
                        <div class="coin_flip">
                            <div id="MAI_TWD_mobile_coin_front" class="TWD">
                                <div id="MAI_TWD_mobile_coin_front_description">
                                    <h4>오늘의<br>단어는?</h4>
                                    <p>확인 >></p>
                                </div>
                            </div>
                            <div id="MAI_TWD_mobile_coin_back" class="TWD">
                                <div id="MAI_TWD_mobile_coin_back_description">
                                    <h4 id="TWD_mobile_kanji"></h4>
                                    <h4 id="TWD_mobile_yomigana"></h4>
                                    <p id="TWD_mobile_korean"></p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </article>
            <article id="MAI_content1">
                <div id="MAI_content1_inf">
                    <h2>하루, 단어는</h2>
                    <p>낱말카드 반복 기억법 등을 이용한<br>CBT 기반의 스마트한 학습방법을<br>제시합니다.</p>
                </div>
            </article>
            <article id="MAI_content2">
                <div id="MAI_content2_inf" class="haru_pc">
                    <h2>지금, 회원으로<br> 가입해보세요!</h2>
                    <p>단어검정을 통한 오답체크, 학습 중 어려운<br>단어를 저장하여 선택적 암기가 가능합니다.</p>
                    <h1><a href=# class="bar openModal" id="termsBtn1">하루, 단어에 가입하기 >></a></h1>
                </div>
                <div id="MAI_content2_mobile_inf" class="haru_mobile">
                    <h2>지금,<br>회원으로<br>가입해보세요!</h2>
                    <p>단어검정을 통한 오답체크,<br>학습 중 어려운<br>단어를 저장하여<br>선택적 암기가 가능합니다.</p>
                    <h1><a href=# class="bar openModal" id="termsBtn2">하루, 단어에<br> 가입하기 >></a></h1>
                </div>
            </article>
            <article id="MAI_familysite">
                <div id="MAI_familysite_wrap">
                    <div id="MAI_familysite_title">
                        <h2>여기도 방문해보세요.</h2>
                    </div>
                    <div id="MAI_familysite_logo_wrap">
                        <div id="MAI_familysite_FO_wrap">
                            <div class="familysite_logo">
                                <a href="https://alberto-hub.github.io/Kosmo19/"><img src="./img/logo_FO.png" alt="후쿠오카 로고"></a>
                            </div>
                            <div class="familysite_description">
                                <!-- <h3>1조 후쿠?오카! 프로젝트입니다.</h3> -->
                            </div>
                        </div>
                        <div id="MAI_familysite_AM_wrap">
                            <div class="familysite_logo">                           
                                <a href="https://kjh123qw.github.io/KOSMO7/"><img src="./img/logo_AM.png" alt="에어마츠리 로고"></a>
                            </div>
                            <div class="familysite_description">
                                <!-- <h3>일본의 다양한 축제를 검색하고, 호스트가 직접 축제 정보를 등록하실 수 있습니다.</h3> -->
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <article id="MAI_sitemap">
                <div id="MAI_sitemap_wrap">
                    <div id="smap1" class="smap_section">
                        <ul>
                            <li class="smap_hd">외우자</li>
                            <li><a href="./page/LRN/hrd.jsp">하루단어</a></li>
                            <li><a href="./page/LRN/exam.jsp">단어검정</a></li>
                            <li><a href="./page/LRN/oboeru4.jsp">단어 List</a></li>
                        </ul>
                    </div>
                    <div id="smap2" class="smap_section">
                        <ul>
                            <li class="smap_hd">커뮤니티</li>
                            <li><a href="./page/COM/notice.jsp">공지사항</a></li>
                            <li><a href="./page/COM/tip.jsp">TIP 게시판</a></li>
                            <li><a href="./page/COM/stats.jsp">단어통계</a></li>
                        </ul>
                    </div>
                    <c:choose>
		                <c:when test="${loginUser.userid!=null}">	                
			           		<div id="smap3" class="smap_section">
		                        <ul>
		                            <li class="smap_hd">My 페이지</li>
		                            <li><a href="./page/MYP/wrongAnswerNotes.jsp">오답노트</a></li>
		                            <li><a href="./page/MYP/mynote.jsp">내 단어장</a></li>
		                            <li><a href="./page/MYP/editInfo_checkPW.jsp">회원정보변경</a></li>
		                        </ul>
		                    </div>
			            </c:when>
			            <c:otherwise>
			            	<div id="smap3" class="smap_section">
					           	<ul>
			                		<li class="smap_hd">My 페이지</li>
			                		<li><a href="#" class="openModal" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">오답노트</a></li>
			                		<li><a href="#" class="openModal" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">내 단어장</a></li>
			                		<li><a href="#" class="openModal" id="loginBtn0" onclick="alert('로그인이 필요한 서비스입니다.')">회원정보변경</a></li>
			            		</ul>
		            		</div>
			            </c:otherwise>
			    	</c:choose>
                    <div id="smap4" class="smap_section">
                        <ul>
                            <li class="smap_hd">하루, 단어<br> 정보</li>
                            <li><a href="./page/INF/aboutus.jsp">소개</a></li>
                            <li><a href="./page/INF/FAQ.jsp">FAQ</a></li>
                        </ul>
                    </div>
                </div>
            </article>
        </div>
    </section>
    <!-- //Contents here !!!!!!!! -->
    <!-- haru footer -->
    <footer>
        <div id="haru_footer_wrap">
            <!-- FNB -->
            <nav id="haru_fnb">
                <ul>
                    <li><a href="./page/INF/aboutus.jsp">페이지소개</a></li>
                    <li class="haru_pc"><a href="/page/INF/FAQ.jsp">FAQ</a></li>
                    <li><a href="./page/MYP/privacyPolicy.jsp" class="laws">개인정보처리방침</a></li>
                    <li><a href="#" style="display:none">ID/PW 찾기</a></li>
                    <c:if test="${loginUser.userid!=null}"><li><a href="/Haruword/page/MYP/deleteAccount.jsp">회원탈퇴</a></li></c:if>
                </ul>
            </nav>
            <!-- //FNB -->
            <div id="haru_contactus">
                <p class="address haru_pc">서울 금천구 가산디지털1로 137 (가산동) | TEL : 02-2025-8523 | FAX : 02-2025-4113 | E-mail : swkosmo@daum.net</p>
                <p class="copyright haru_pc">Copyright ⓒ 2019 Haruword. All Right Reserved.</p>
                <p class="address haru_mobile">서울 금천구 가산디지털1로 137 (가산동)<br>KOSMO 한국소프트웨어인재개발원</p>
                <p class="copyright haru_mobile">Copyright ⓒ 2019 Haruword. All Right Reserved.</p>
            </div>
        </div>
    </footer>
    <!-- //haru footer -->

    <!-- modal related -->
    <div id="modal" class="modal">
        <div class="modal-content" id="popup_content"></div>
    </div>
    <script src="/Haruword/js/modal_index.js"></script>
    <script src="/Haruword/js/user.js"></script>
    <!-- /modal related -->
</body>
</html>