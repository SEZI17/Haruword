<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>하루, 단어 > My 페이지</title>
    <script src="../../js/jquery-2.1.1.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>
    <script src="../../js/gnb_dropdown.js"></script>
    <script src="../../js/MYP/wrongAnswerNotes.js"></script>
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/MYP/MYP_common.css">
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <link rel="stylesheet" href="../../css/pc960/MEM/MEM_common.css">
    <link rel="stylesheet" href="../../css/Mobile/MYP/MYP_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <style>
        #editInfo {
            padding-left: 15%;
        }
        .hrd {
            background: #E8D7CA;
        }
		#modal {
				display: block;
		}
    </style>
</head>

<body>
    <!-- haru header -->
    <jsp:include page="../haru_header.jsp" />
    <!-- //haru header -->
    <!-- Contents Here -->
    <div id="haru_MYP_header">
        <div id = "haru_MYP_header_subject" class="haru_pc">
        <h1 class="haru_pc">My 페이지</h1>       
        <p class="haru_pc">학습하면서 틀린 단어, 어려웠던 단어 등을 조회하고,<br>회원정보를 변경하실 수 있습니다.</p>
        </div>
        <h1 class="haru_mobile">회원정보변경</h1>
    </div>
    <div id="haru_contents_wrap">
        <aside id="haru_aside" class="haru_pc">
            <!-- SNB -->
            <jsp:include page="MYP_SNB.jsp" />
            <!-- //SNB -->
        </aside>
        <section id="haru_subcontents">
            <header id="haru_subheader" class="haru_pc">
                <div id="haru_subtitle">회원정보변경</div>
                <div id="haru_cat">
                    <p>HOME > My 페이지 > 회원정보변경</p>
                </div>
            </header>
            <!-- SubContents Here -->

            <!-- //SubContents Here -->
        </section>
    </div>
    <!-- //Contents Here -->
    <!-- modal -->
    <c:choose>
            	<c:when test="${loginUser.userid!=null}">
		            <div id="modal" class="modal">
				    	<div class="modal-content" id="popup_content">
				        <jsp:include page="../MEM/checkPW.jsp" />
				        </div>
				    </div>	
            	</c:when>
            	<c:otherwise>
            		<c:redirect url="../errorPage.jsp"></c:redirect>
            	</c:otherwise>
    </c:choose> 
    
    <!-- //Contents Here -->
    <!-- haru footer -->
    <jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
</body>

</html>