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
    <script src="../../js/wordlist.js"></script>
    <script src="../../js/MYP/mynote.js"></script>
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/MYP/MYP_common.css">
    <link rel="stylesheet" href="../../css/pc960/MYP/mynote.css">
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <link rel="stylesheet" href="../../css/Mobile/MYP/MYP_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
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
        <h1 class="haru_mobile">${loginUser.name}님의 단어장</h1>
    </div>
    <div id="haru_contents_wrap">
        <aside id="haru_aside" class="haru_pc">
            <!-- SNB -->
            <jsp:include page="MYP_SNB.jsp" />
            <!-- //SNB -->
        </aside>
        <section id="haru_subcontents">
            <header id="haru_subheader" class="haru_pc">
                <div id="haru_subtitle">${loginUser.name}님의 단어장</div>
                <div id="haru_cat">
                    <p>HOME > My 페이지 > 내 단어장</p>
                </div>
            </header>
            <!-- SubContents Here -->
            <c:choose>
            	<c:when test="${loginUser.userid!=null}">
		            <article id="MYP_MYN_List">
		                <div id="MYP_MYN_table_wrap">
		                    <div id="MYN_table_control">
		                        <input id="all_check" type="checkbox" name="all" onclick="checkallWord()">
		                        <section>
		                            <label class="all_check_label" for="all_check">전체선택</label>
		                        </section> 
		                        <section class="delete_list" onclick="deleteWord()">선택한 항목 삭제</section>
		                    </div>
		                    <table id="MYP_MYN_table">
		                        <thead>
		                            <tr>
		                                <th class="table_form">품사</th>                                
		                                <th class="table_kanji">한자</th>
		                                <th class="table_yomigana">요미가나</th>
		                                <th class="table_korean">뜻</th>
		                                <th class="table_time">체크한 날짜</th>
		                                <th class="table_delete">삭제</th>
		                            </tr>
		                        </thead>
		                        <tbody id="MYP_MYN_notelist">
		                        </tbody>
		                    </table>
		                    <div id="list_none">표시할 단어가 없습니다.</div>                 
		                </div>
            		</article>	
            	</c:when>
            	<c:otherwise>
            		<c:redirect url="../errorPage.jsp"></c:redirect>
            	</c:otherwise>
            </c:choose>  
            <!-- //SubContents Here -->
        </section>
    </div>
    <!-- //Contents Here -->

    <!-- haru footer -->
    <jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
</body>

</html>