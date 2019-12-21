<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:if test="${result==true}">
		<script type="text/javascript">
		opener.document.getElementById("chkNick").value = "";
		opener.document.getElementById("nicknameInputError").innerHTML = opener.document.getElementById("nicknameInput").value+"은 이미 사용중인 별명입니다.";
		self.close();
		</script>
	</c:if>
	<c:if test="${result==false}">
		<script type="text/javascript">
		opener.document.getElementById("chkNick").value = opener.document.getElementById("nicknameInput").value;
		opener.document.getElementById("nicknameInputError").innerHTML = "사용할 수 있는 별명입니다.";
		self.close();
		</script>
	</c:if>
