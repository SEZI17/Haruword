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

    <!-- PC버전 -->
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/COM_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/board.css">
    <link rel="stylesheet" href="../../css/pc960/COM/notice.css">
    <link rel="stylesheet" href="../../css/pc960/COM/write.css">
    <!-- //PC버전 -->
    <!-- 모바일 -->
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/COM_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/board_mobile.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/write_mobile.css">
    <!-- //모바일 -->

    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <!-- CKEditor -->
    <script src="../../js/ckeditor/ckeditor.js"></script>
    <!-- //CKEditor -->
</head>

<body>
    <!-- haru header -->
    <jsp:include page="../haru_header.jsp" />

    <div id="haru_COM_header">
        <div id = "haru_COM_header_subject" class="haru_pc">
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
            <header id="haru_subheader" class="haru_pc">
                <div id="haru_subtitle">공지사항</div>
                <div id="haru_cat">
                    <p>HOME > 커뮤니티 > 공지사항</p>
                </div>
            </header>
            <!-- //커뮤니티 헤더 -->
            <!-- SubContents Here -->
            <div class="container">
                <!-- 글쓰기 모듈 -->
                <div class="articleEditor">

                    <input type=" text" name="article_title" id="articleTitle" placeholder="글 제목" />
                    <div id="articleInner">

                        <textarea name="article_content" id="articleContent" cols="30" rows="10"></textarea>
                    </div>
                    <div id="articleCancel" class="btn" onclick="cancel()">취소</div>
                    <div id="articleSend" class="btn" onclick="summit()">글쓰기</div>
                    <div class="clfx"></div>

                </div>
                <!-- //글쓰기 모듈 -->
            </div>
        </section>
    </div>
    <!-- haru footer -->
    <jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
    <script>
        $(() => {
            $('#header_com').load("../haru_header.html");
            $('#aside_com').load("./navCOM.html");
            $('#footer_com').load('../haru_footer.html');
        })
        function cancel() {
            let conf = confirm("작성을 취소하고 이전 페이지로 돌아갑니다.")
            if (conf) {
                history.back();
            }
        }
        function summit() {
            let conf = confirm("해당 내용을 게시하시겠습니까?")
            if (conf) {
                // 백엔드 호출, 서버사이드로 글을 보냄.
                // 가능하면 이때 내용 검증 후 String 타입 그대로 HTML 코드를 담을 것.
                let articleData = CKEDITOR.instances.articleContent.getData();
                let titleData = document.getElementById("articleTitle").value
                if(!articleData || !titleData){
                    alert("제목 혹은 내용이 비어있습니다.")
                }
            }
        }
        CKEDITOR.replace('articleContent');

    </script>
    <!-- //SubContents Here -->
    <!-- //Contents Here -->

</body>

</html>