<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	List<String> list = new ArrayList<String>();
	list.add("ȫ�浿");
	list.add("��û��");
	list.add("�ڹ���");
	list.add("�̼���");
	list.add("������");
%>
<c:set var="names" value="<%=list%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>Java = forEach����</h3>
		<%
			for(String s:list){
				out.println(s);
			}
		%>
		<h3>JSTL = forEach����</h3>
		<c:forEach var="s" items="${names}">
			${s}
		</c:forEach>
		
	</center>
</body>
</html>