<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<span class="modal_close" onclick="closeModal()">&times;</span>
<h1 id="modalHeader">비밀번호 재확인</h1>
<p>안전한 사이트 사용을 위해 비밀번호를 다시 한번 입력해주세요.</p>
<form id="frm" method="post" action="/Haruword/MemberServlet?command=member_checkPW" target="confirmPW" onsubmit="pwCheck();">
	<div id="modal_password">
	    <input type="password" name="pwd" placeholder="비밀번호" class="modal_inputBox" onkeydown="clearError(this.id)" id="passwordInput">
	    <p id="passwordInputError"></p>
	</div>
	<button type="submit" class="modal_confirmBtn" onclick="return checkPwConfirm()">회원 정보 변경</button>
</form>
<script>
    function closeModal() {
        history.back();
    };
</script>