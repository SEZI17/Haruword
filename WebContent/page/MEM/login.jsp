<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<span class="modal_close" onclick="closeModal()">&times;</span>
<h1 id="modalHeader">로그인</h1>
<form method="post" action="/Haruword/MemberServlet?command=member_login" target="login" onsubmit="loginCheck();">
	<div>
	    <input type="hidden" class="modal_inputBox">
	    <p id="loginError"></p>
	</div>
	<div id="modal_id">
	    <input type="text" name="userId" placeholder="아이디" class="modal_inputBox" name="id" onkeydown="clearError(this.id)" id="idInput">
	    <p id="idInputError"></p>
	</div>
	<div id="modal_password">
	    <input type="password" name="pwd" placeholder="비밀번호" class="modal_inputBox" name="pwd" onkeydown="clearError(this.id)" id="passwordInput">
	    <p id="passwordInputError"></p>
	</div>

<p><a href="#" style="color:darkblue" class="redirectModal" id="forgotIDBtn2">아이디 찾기</a> · <a href="#"
        style="color:darkblue" class="redirectModal" id="forgotPWBtn2">비밀번호 찾기</a></p>
<button class="modal_confirmBtn" onclick="return loginConfirm();" type="submit">로그인</button>
</form>
<br>
<hr><br>
<p style="text-align: center">하루 단어 아이디가 없으신가요? &nbsp;<a href="#" style="color:darkblue" class="redirectModal" id="termsBtn2">회원가입</a></p>
<script>
    //redirect modal
    $(".redirectModal").click(function () {
        var idName = $(this).attr("id");
        idName = idName.substring(0, idName.length - 1);
        $("#" + idName + "0").click();
    });
</script>