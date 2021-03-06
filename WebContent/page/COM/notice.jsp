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
    <script src="../../js/COM/js_common.js"></script>
    <!-- PC버전 -->
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/COM_common.css">
    <link rel="stylesheet" href="../../css/pc960/COM/board.css">
    <link rel="stylesheet" href="../../css/pc960/COM/notice.css">
    <!-- //PC버전 -->
    <!-- 모바일 -->
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/COM_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/COM/board_mobile.css">
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
            <header id="haru_subheader" class="haru_pc">
                <div id="haru_subtitle">공지사항</div>
                <div id="haru_cat">
                    <p>HOME > 커뮤니티 > 공지사항</p>
                </div>
            </header>
            <!-- //커뮤니티 헤더 -->
            <div class="container">
                <!-- 검색기능 -->
                <div class="search">
                    <!-- <a href="#"><img src="../../img/category.png" alt="board_view_icon"></a> -->
                    <form action="submit">
                        <select name="search_type" id="search_type">
                            <option value="article">제목</option>
                            <option value="contents">글</option>
                            <option value="art_con">글+제목</option>
                        </select>
                        <input type="search" name="search_input" id="search_input">
                        <div class="btn" type="submit"><img src="../../img/search.png" alt="검색"></div>
                        <div class="clfx"></div>
                    </form>
                    <div class="clfx"></div>
                </div>
                <!-- //검색기능 -->
                <div class="board_section">
                    <table>
                        <!-- 게시판 항목 -->
                        <thead>
                            <th>번호</th>
                            <th class="board_article">글 제목</th>
                            <th>글쓴이</th>
                            <th>조회수</th>
                            <th>작성일</th>
                        </thead>
                        <!-- //게시판 항목 -->

                        <!-- 게시판 글 -->
                        <tbody>
                            <tr>
                                <td><a href="./notice-example.jsp?id=1">3</a></td>
                                <td class="board_article"><a href="./notice-example.jsp?id=1">홈페이지 일시 중단 안내</a></td>
                                <td><a href="./notice-example.jsp?id=1">관리자</a></td>
                                <td><a href="./notice-example.jsp?id=1">16</a></td>
                                <td><a href="./notice-example.jsp?id=1">2019-09-03</a></td>
                            </tr>
                            <tr>
                                <td><a href="./notice-example.jsp?id=2">2</a></td>
                                <td class="board_article"><a href="./notice-example.jsp?id=2">서비스 모니터 요원 모집</a></td>
                                <td><a href="./notice-example.jsp?id=2">관리자</a></td>
                                <td><a href="./notice-example.jsp?id=2">16</a></td>
                                <td><a href="./notice-example.jsp?id=2">2019-09-03</a></td>
                            </tr>
                            <tr>
                                <td><a href="./notice-example.jsp?id=3">1</a></td>
                                <td class="board_article"><a href="./notice-example.jsp?id=3">제안 공모</a></td>
                                <td><a href="./notice-example.jsp?id=3">관리자</a></td>
                                <td><a href="./notice-example.jsp?id=3">16</a></td>
                                <td><a href="./notice-example.jsp?id=3">2019-09-03</a></td>
                            </tr>
                        </tbody>
                        <!-- //게시판 글 -->
                    </table>
                    <!-- 페이지네이션 -->
                    <!-- <div class = "pagination">
                        <a href="#" >{{p +1}}</a>
                    </div> -->
                    <div class="pagination">
                        <div class="btn" id="left_pagination">&laquo;</div>
                        <ul class="pagination_number">
                            <li><a href="?page=1">1</a></li>
                            <li><a href="?page=2">2</a></li>
                            <li><a href="?page=3">3</a></li>
                            <li><a href="?page=4">4</a></li>
                            <li><a href="?page=5">5</a></li>
                        </ul>
                        <div class="btn" id="right_pagination">&raquo;</div>

                    </div>
                    <!-- //페이지네이션 -->
                    <div class="btn" id="write_btn" onclick="summit()">글쓰기</div>

                    <div class="clfx"></div>
                    <!-- //게시판 본체 -->
                </div>
                <!-- 게시판 본체 -->
            </div>
        </section>
        <!-- //SubContents Here -->
    </div>
    <!-- haru footer -->
    <jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
    <script>

        function summit() {
            //유저정보 로드. 로그인 상태를 확인한다.
            let user = false;   //로그인 처리 후 user 변수에 저장.

            if (!user) {
                alert("글쓰기 권한이 부족합니다.");
            } else {

                location.href = "./tipc.html"

            }
        }

    </script>
</body>

</html>