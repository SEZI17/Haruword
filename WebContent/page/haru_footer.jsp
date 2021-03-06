<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- haru footer -->
    <footer>
        <div id="haru_footer_wrap">
            <!-- FNB -->
            <nav id="haru_fnb">
                <ul>
                    <li><a href="/Haruword/page/INF/aboutus.jsp">페이지소개</a></li>
                    <li class="haru_pc"><a href="/page/INF/FAQ.jsp">FAQ</a></li>
                    <li><a href="/Haruword/page/MYP/privacyPolicy.jsp" class="laws">개인정보처리방침</a></li>
                    <li class="sign"><a href="#" class="openModal" id="forgotIDBtn2" style="display:none">ID/PW 찾기</a></li>
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