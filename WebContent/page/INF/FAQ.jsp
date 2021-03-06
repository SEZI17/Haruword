<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>하루, 단어 > 페이지 소개</title>
    <script src="../../js/jquery-2.1.1.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>    
    <script src="../../js/gnb_dropdown.js"></script>
    <script src="../../js/INF/FAQjs.js"></script>
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/INF/INF_common.css">
    <link rel="stylesheet" href="../../css/Mobile/INF/INF_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <link rel="stylesheet" href="../../css/pc960/INF/FAQ1.css">
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story:400" rel="stylesheet">
</head>
<body>
    <!-- haru header -->
    <jsp:include page="../haru_header.jsp" />
    <!-- //haru header -->
        <!-- Contents Here -->
        <div id="haru_INF_header">
            <div id = "haru_INF_header_subject" class="haru_pc">
            <h1 class="haru_pc">페이지 정보</h1>            
            <p class="haru_pc">제작자 및 관리자를 소개하고<br>자주 묻는 질문을 확인하실 수 있습니다.</p>
        </div>
        <h1 class="haru_mobile">FAQ</h1>
        </div>
        <div id="haru_contents_wrap">
            <aside id="haru_aside" class="haru_pc">
                <!-- SNB -->
                <jsp:include page="INF_SNB.jsp" />
                <!-- //SNB -->
            </aside>
            <section id="haru_subcontents">
                <header id="haru_subheader" class="haru_pc">
                    <div id="haru_subtitle">자주 묻는 질문</div>
                    <div id="haru_cat">
                        <p>HOME > 페이지 소개 > FAQ</p>
                    </div>
                </header>                    
                <!-- SubContents Here -->
                <div id='FAQ_wrap'>
                        <div id='FAQ_Q1' class='faq'>Q1 · 하루,단어는 유료서비스인가요?
                            <p class='cost'>
                                A · 무료로 제공되고 있으며, 유료전환의 가능성 또한 없습니다.<br>
                            </p>
                        </div>
                        <div id='FAQ_Q2' class='faq'>Q2 · 모바일, 태블릿에서도 이용 가능 한가요?
                            <p class='cost'>
                                A · PC에서와 마찬가지로 이용 가능 합니다.<br>
                            </p>
                        </div>
                        <div id='FAQ_Q3' class='faq'>Q3 · ID/닉네임을 변경하고 싶어요
                            <p class='cost long'>
                                A · ID 변경은 불가능 하지만 닉네임 변경권(9900원 세금별도)을 구입하여 사용하시면 됩니다. (※ 제작자의 희망)<br>A · ID 변경은 불가능 하지만 닉네임은 My 페이지 카테고리의 회원정보변경 페이지에서 가능합니다. (※ 현실)
                            </p>
                        </div>
                        <div id='FAQ_Q4'  class='faq'>Q4 · 회원탈퇴는 어떻게 하나요?
                            <p class='cost'>
                                A · 회원 탈퇴를 원하시는 경우 홈페이지 로그인후<br>
                                맨 아래쪽에 회원탈퇴를 버튼을 눌러 사용하시면 됩니다.<br>
                            </p>
                        </div>        
                        <div id='FAQ_Q5' class='faq'>Q5 · 커뮤니티에 글쓰기는 어떻게 하나요?
                            <p class='cost'>
                                A · 무분별한 사용을 막기 위하여 사용빈도가 높은 상위 회원만 글을 쓸 수 있습니다.<br>
                                하지만 읽는것과 댓글은 사용 가능합니다.<br>
                            </p>
                        </div>
                        <div id='FAQ_Q6' class='faq'>Q6 · 어떻게 이용해야 할지 모르겠어요
                            <p class='cost'>
                                A · 메인 화면 하단에 외우자탭, 단어장 사용법 등이 자세히 나와있으니 참고 부탁드립니다.<br>
                            </p>
                        </div>
                        <div id='FAQ_Q7' class='faq'>Q7 · 개선사항 등 불편한 점은 어디에 말하면 되나요?
                            <p class='cost'>
                                A · sae0817@naver.com 로 메일 주시면 적극 반영하겠습니다.<br>
                            </p>
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