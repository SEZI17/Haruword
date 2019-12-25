<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/Haruword/page/errorPage.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- haru header -->
    <header>
        <div id="haru_header_upper">
            <div id="haru_header_upper_wrap">
                <a href="../../index.jsp"><title id="haru_title">하루, 단어</title></a>
                <div id="haru_mobile_sidemenu_toggle" class="haru_mobile"><img class="sidemenuon" src="../../img/sidemenuon.png"><img class="sidemenuoff" src="../../img/sidemenuoff.png"></div>
            </div>
        </div>
        <div id="haru_header_bottom" class="haru_pc">
            <div id="haru_header_bottom_wrap">
                <!-- GNB -->
                <nav id="haru_gnb">
                    <ul>
                        <li id="haru_LRN" class="dropLRN"><a href="#">외우자</a></li>
                        <li id="haru_COM" class="dropCOM"><a href="#">커뮤니티</a></li>
                        <li id="haru_MYP" class="dropMYP"><a href="#">My 페이지</a></li>
                        <li id="haru_INF" class="dropINF"><a href="#">페이지 정보</a></li>
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
            <li><a href="../LRN/hrd.jsp">하루단어</a></li>
            <li><a href="../LRN/exam.jsp">단어검정</a></li>
            <li><a href="../LRN/oboeru4.jsp">단어 List</a></li>
        </ul>
        <div class="menu_description">
            <p class="menu_description_subject">외우자</p>
            <p class="menu_description_contents">하루, 단어는 외우자의 카테고리 안에서 여러분들에게 스마트한 학습방법을 제공하고자 합니다.</p>
        </div>
    </div>
    <div id="haru_COM_dropdown" class="haru_pc dropdown">
        <ul class="dropCOM">
            <li><a href="../COM/notice.jsp">공지사항</a></li>
            <li><a href="../COM/tip.jsp">TIP 게시판</a></li>
            <li><a href="../COM/stats.jsp">단어통계</a></li>
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
            			<li><a href="../MYP/wrongAnswerNotes.jsp" class="wan">오답노트</a></li>
            			<li><a href="../MYP/mynote.jsp">내 단어장</a></li>
            			<li><a href="../MYP/editInfo_checkPW.jsp">회원정보변경</a></li>
        			</ul>
	            </c:when>
	            <c:otherwise>
		           	<ul class="dropMYP">
                		<li><a href="#" class="openModal" id="loginBtn0">My 페이지</a></li>
                		<li><a href="#" class="openModal" id="loginBtn0">오답노트</a></li>
                		<li><a href="#" class="openModal" id="loginBtn0">내 단어장</a></li>
                		<li><a href="#" class="openModal" id="loginBtn0">회원정보변경</a></li>
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
            <li><a href="../INF/aboutus.jsp" class="aboutus">소개</a></li>
            <li><a href="../INF/FAQ.jsp">FAQ</a></li>
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
                <div id="haru_mobile_sidemenu_toggle_sdm" class="haru_mobile"><img class="sidemenuoff" src="../../img/sidemenuoff.png"></div>
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
                <li><a href="../LRN/hrd.jsp" class="sidelist_list">하루단어</a></li>
                <li><a href="../LRN/exam.jsp" class="sidelist_list">단어검정</a></li>
                <li><a href="../LRN/oboeru4.jsp" class="sidelist_list">단어 List</a></li>
            </ul>
            <ul class="sideCOM">
                <li><a href="#" class="sidelist_subject">커뮤니티</a></li>
                <li><a href="../COM/notice.jsp" class="sidelist_list">공지사항</a></li>
                <li><a href="../COM/tip.jsp" class="sidelist_list">TIP 게시판</a></li>
                <li><a href="../COM/stats.jsp" class="sidelist_list">단어통계</a></li>
            </ul>
            <c:choose>
                <c:when test="${loginUser.userid!=null}">	                
	           		<ul class="sideMYP">
                		<li><a href="#" class="sidelist_subject">My 페이지</a></li>
                		<li><a href="../MYP/wrongAnswerNotes.jsp" class="sidelist_list">오답노트</a></li>
                		<li><a href="../MYP/mynote.jsp" class="sidelist_list">내 단어장</a></li>
                		<li><a href="../MYP/editInfo_checkPW.jsp" class="sidelist_list">회원정보변경</a></li>
            		</ul>
	            </c:when>
	            <c:otherwise>
		           	<ul class="sideMYP">
                		<li><a href="#" class="openModal sidelist_subject" id="loginBtn0">My 페이지</a></li>
                		<li><a href="#" class="openModal sidelist_list" id="loginBtn0">오답노트</a></li>
                		<li><a href="#" class="openModal sidelist_list" id="loginBtn0">내 단어장</a></li>
                		<li><a href="#" class="openModal sidelist_list" id="loginBtn0">회원정보변경</a></li>
            		</ul>
	            </c:otherwise>
	        </c:choose>
            
            <ul class="sideINF">
                <li><a href="#" class="sidelist_subject">페이지 소개</a></li>
                <li><a href="../INF/aboutus.jsp" class="sidelist_list">소개</a></li>
                <li><a href="../INF/FAQ.jsp" class="sidelist_list">FAQ</a></li>
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
    <!-- modal -->
    <div id="modal" class="modal">
        <div class="modal-content" id="popup_content"></div>
    </div>
    <script src="../../js/modal.js"></script>
    <script src="../../js/user.js"></script>

    <!-- 드롭다운 메뉴 -->
    <script src="../../js/gnb_dropdown.js"></script>