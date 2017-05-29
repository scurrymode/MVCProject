<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	if(조건) 처리
	<c:if test="조건">
	
	else가 없다.	<c:if test="조건"> 처리 <c:if test="!조건"> 처리 이렇게 해야 else처리

	<c:choose>
		<c:when test="조건">처리
		<c:otherwise> 처리
 --%>
<c:set var="sex" value="여자"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<c:if test="${sex=='남자'}">남자</c:if>
		<c:if test="${sex!='남자'}">여자</c:if><br>
		<c:forEach var="i" begin="1" end="10">
			<c:if test="${i%2!=0}">${i} &nbsp;</c:if>
		</c:forEach><br>
		
		<c:choose>
			<c:when test="${sex=='남자'}">1</c:when>
			<c:otherwise>2</c:otherwise>
		</c:choose><br>
		
		<c:forTokens var="color" items="red,green,blue" delims=",">
			${color}
		</c:forTokens>
	</center>
</body>
</html>