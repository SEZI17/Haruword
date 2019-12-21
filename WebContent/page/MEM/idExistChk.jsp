<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:if test="${result==true}">
		<script type="text/javascript">
		opener.document.getElementById("chkId").value = "";
		opener.document.getElementById("idInputError").innerHTML = opener.document.getElementById("idInput").value+"은 이미 사용중인 아이디입니다.";
		self.close();
		</script>
	</c:if>
	<c:if test="${result==false}">
		<script type="text/javascript">
		opener.document.getElementById("chkId").value = opener.document.getElementById("idInput").value;
		opener.document.getElementById("idInputError").innerHTML = "사용할 수 있는 아이디입니다.";
		self.close();
		</script>
	</c:if>
