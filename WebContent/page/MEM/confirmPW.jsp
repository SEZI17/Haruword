<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${chkResult==true}">
		${chkResult=false}
		<script type="text/javascript">
		opener.document.getElementById("passwordInputError").innerHTML = "입력하신 비밀번호가 일치하지 않습니다.";
		self.close();
		</script>
</c:if>
<c:if test="${chkResult==false}">
		<script>
		opener.location.href = "/Haruword/page/MYP/editInfo.jsp";
		self.close();
		</script>
</c:if>