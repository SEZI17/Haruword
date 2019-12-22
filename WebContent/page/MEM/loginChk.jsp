<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:if test="${result==true}">
		<script type="text/javascript">
		var url = 'MemberServlet?command=member_loginChk&userId='+'${userId}'+'&result='+'${result}';
		opener.location.href = url;
		self.close();
		</script>
	</c:if>
	<c:if test="${result==false}">
		<script type="text/javascript">
		opener.document.getElementById("loginError").innerHTML = "가입되지 않은 아이디거나 잘못된 비밀번호입니다.";
		self.close();
		</script>
	</c:if>