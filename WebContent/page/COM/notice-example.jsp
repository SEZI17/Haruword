<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>하루, 단어 > 커뮤니티</title>
    <script src="../../js/jquery-2.1.1.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>

    <script src="../../js/COM/js_common.js"></script>
    <script src="../../js/COM/article.js"></script>

    <!-- PC버전 -->
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/COM_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/board.css">
    <link rel="stylesheet" href="../../css/pc960/COM/notice.css">
    <link rel="stylesheet" href="../../css/pc960/COM/article.css">
    <!-- //PC버전 -->
    <!-- 모바일 -->
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/article_mobile.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/COM_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/board_mobile.css">
    <link rel="stylesheet" href="../../css/pc960/COM/article.css">
    <!-- //모바일 -->
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
</head>

<body>

    <!-- haru header -->
    <jsp:include page="../haru_header.jsp" />

    <div id="haru_COM_header">
        <div id="haru_COM_header_subject" class="haru_pc">
            <h1 class="haru_pc">커뮤니티</h1>
            <p class="haru_pc">공지사항 및 회원 간 단어 암기 방법을<br> 공유할 수 있습니다.</p>
        </div>
        <h1 class="haru_mobile">공지사항</h1>
    </div>
    <!-- //haru header -->

    <div id="haru_contents_wrap">
        <aside id="haru_aside" class="haru_pc">
        <!-- haru aside -->
        <jsp:include page="COM_SNB.jsp" />
        <!-- //haru aside -->
        </aside>

        <!-- SubContents Here -->
        <section id="haru_subcontents">
            <!-- 커뮤니티 헤더 -->
            <header id="haru_subheader">
                <div id="haru_subtitle">공지사항</div>
                <div id="haru_cat">
                    <p>HOME > 커뮤니티 > 공지사항</p>
                </div>
            </header>
            <!-- //커뮤니티 헤더 -->
            <!-- 게시글 시작 -->
            <div class="article">
                <!-- 게시글 헤더 -->
                <div class="article_head">
                    <h4 class="article_title">{글 제목}</h4>
                    <span>작성일 : <span class="article_date">{작성일}</span></span>
                    <div class="clfx"></div>
                </div>

                <div class="article_info">
                    <span class="article_author">작성자 : {작성자}</span>
                    <span class="article_href">글주소 :<a href="#">{글 주소}</a></span>
                    <div class="clfx"></div>
                </div>
                <hr>
                <!-- //게시글 헤더 -->
                <!-- 게시글 내용 -->
                <div class="article_contents">

                </div>
                <!-- //게시글 내용 -->
                <hr>
                <!-- 게시글 조작 -->
                <div class="article_editor">
                    <span class="read">조회수 : <span class="article_viewer">{조회수}</span> 회</span>
                    <div class="btn" id="delete" onclick="deleteArticle()">삭제</div>
                    <div class="btn" id="edit" onclick="editArticle()">수정</div>
                    <div class="clfx"></div>
                </div>
                <hr>
                <div class="article_footer">
                    <div class="footer_list">
                        <div class="other_subject_wrap"><span class="other_subject">다음글</span><span
                                class="other_subject_sw article_next">{다음 글제목}</span></div>
                        <div class="other_subject_wrap"><span class="other_subject">이전글</span><span
                                class="other_subject_sw article_before">{이전 글제목}</span></div>
                    </div>
                    <div class="btn" onclick="moveList()">목록</div>

                    <div class="clfx"></div>
                </div>
                <hr>
                <!-- //게시글 조작 -->
            </div>
            <!-- //SubContents Here -->
        </section>
    </div>
    <!-- //Contents Here -->
    <!-- haru footer -->
	<jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
    
    <script>
        $(function () {
            let url = $.urlParam('id');
            loadArticle(url);
        })
    </script>

</body>

</html>