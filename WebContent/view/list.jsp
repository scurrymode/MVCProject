<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.EmpVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>사원목록</h3>
		<table border=1>
			<tr>
			<th>인덱스</th>
			<th>사번</th>
			<th>이름</th>
			<th>직위</th>
			</tr>
			 <c:forEach var="vo" items="${list}" varStatus="s">
		 		<tr>
		 		<td>${s.index}</td>
		 		<td>${vo.empno}</td>
		 		<td><a href="DispatcherServlet?cmd=list&empno=${vo.empno}">${vo.ename}</a></td>
		 		<td>${vo.job}</td>
		 		</tr>
			 </c:forEach>
		</table>	 
		사번: ${vo.empno }<br>
		이름: ${vo.ename }<br>
		직위: ${vo.job }<br>
		
	</center>

</body>
</html>