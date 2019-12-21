<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<span class="modal_close" onclick="closeModal()">&times;</span>
<h1 id="modalHeader">회원 정보 입력</h1>
<form method="post" action="MemberServlet?command=member_add">
	<div id="modal_name">
		이름 <input type="text" placeholder="이름 (2~5글자 한글)" name="name"
			class="modal_inputBox" onkeydown="clearError(this.id)" id="nameInput">
		<p id="nameInputError"></p>
	</div>
	<div id="modal_id">
		아이디 <input type="text" placeholder="아이디 (영문 및 숫자 4~10글자)"
			name="userId" class="modal_inputBox" onfocusout="idExist()"
			onkeydown="clearError(this.id)" id="idInput">
		<p id="idInputError"></p>
	</div>
	<input type="hidden" name="checkedId" id="chkId">
	<div id="modal_nickname">
		별명<input type="text" placeholder="별명 (2~10글자, 특수문자 제외)"
			name="nickname" class="modal_inputBox" onfocusout="nickExist()"
			onkeydown="clearError(this.id)" id="nicknameInput">
		<p id="nicknameInputError"></p>
	</div>
	<input type="hidden" name="checkedNickname" id="chkNick">
	<div id="modal_email">
		이메일 주소<input type="email" placeholder="이메일 주소" name="email"
			class="modal_inputBox" onkeydown="clearError(this.id)"
			id="emailInput">
		<p id="emailInputError"></p>
	</div>
	<div id="modal_password">
		비밀번호<input type="password" placeholder="비밀번호 (8자리 이상)" name="pwd"
			class="modal_inputBox" onkeydown="clearError(this.id)"
			id="passwordInput">
		<p id="passwordInputError"></p>
	</div>
	<div id="modal_passwordCheck">
		비밀번호 확인<input type="password" placeholder="비밀번호 확인" name="checkPW"
			class="modal_inputBox" onkeydown="clearError(this.id)"
			id="passwordCheckInput">
		<p id="passwordCheckInputError"></p>
	</div>
	<button class="modal_confirmBtn" onclick="return signupConfirm()" type="submit">회 원 가 입</button>
</form>