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
    <script src="../../js/gnb_dropdown.js"></script>
    <script src="../../js/COM/stats.js"></script>
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/COM_common.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/COM_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/stats.css">
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story:400" rel="stylesheet">
</head>
<body>
    <!-- haru header -->
    <jsp:include page="../haru_header.jsp" />
    <!-- //haru header -->    
    <!-- Contents Here -->
    <div id="haru_COM_header">
        <div id = "haru_COM_header_subject" class="haru_pc">
        <h1 class="haru_pc">커뮤니티</h1>        
        <p class="haru_pc">공지사항 및 회원 간 단어 암기 방법을<br> 공유할 수 있습니다.</p>
        </div>
        <h1 class="haru_mobile">단어통계</h1>
    </div>
    <div id="haru_contents_wrap">
   		<aside id="haru_aside" class="haru_pc">
        <!-- haru aside -->
        <jsp:include page="COM_SNB.jsp" />
        <!-- //haru aside -->
        </aside>
        <section id="haru_subcontents">
            <header id="haru_subheader" class="haru_pc">
                <div id="haru_subtitle">단어통계</div>
                <div id="haru_cat">
                    <p>HOME > 커뮤니티 > 단어통계</p>
                </div>
            </header>                    
            <!-- SubContents Here -->
            <div id="article_wrap">
                <div class="exam_detail">
                    <p>주간 가장 많이 틀린 단어 Top5를 보여줍니다.</p>
                    <p>어떤 단어가 가장 많이 틀렸는지 확인해 보세요!!</p>
                </div>  

                <div id="stats">
                    <div id="graph">
                        <div class="graph_bar"></div>
                        <div class="graph_bar"></div>
                        <div class="graph_bar"></div>
                        <div class="graph_bar"></div>
                        <div class="graph_bar"></div>
                    </div>
                    <div id="graph_content">
                        <div class="content">먹다<br>食べる</div>
                        <div class="content">하다<br>する</div>
                        <div class="content">일하다<br>働く</div>
                        <div class="content">놀다<br>遊ぶ</div>
                        <div class="content">가다<br>行く</div>
                    </div>
                    
                </div>
            </div>
            <!-- //SubContents Here -->
        </section>
    </div>
    <!-- //Contents Here -->
    <!-- haru footer -->
    <jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
</body>
</html>