<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	if(����) ó��
	<c:if test="����">
	
	else�� ����.	<c:if test="����"> ó�� <c:if test="!����"> ó�� �̷��� �ؾ� elseó��

	<c:choose>
		<c:when test="����">ó��
		<c:otherwise> ó��
 --%>
<c:set var="sex" value="����"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<c:if test="${sex=='����'}">����</c:if>
		<c:if test="${sex!='����'}">����</c:if><br>
		<c:forEach var="i" begin="1" end="10">
			<c:if test="${i%2!=0}">${i} &nbsp;</c:if>
		</c:forEach><br>
		
		<c:choose>
			<c:when test="${sex=='����'}">1</c:when>
			<c:otherwise>2</c:otherwise>
		</c:choose><br>
		
		<c:forTokens var="color" items="red,green,blue" delims=",">
			${color}
		</c:forTokens>
	</center>
</body>
</html>