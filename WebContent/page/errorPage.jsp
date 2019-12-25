<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하루단어 > 오류 페이지</title>
</head>
<body>
<script type="text/javascript">
alert("잘못된 접근입니다.");
location.replace('../index.jsp');
</script>
</body>
</html>