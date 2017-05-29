<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
	1) for
		for(int i=1; i<10; i++)
		<c:forEach var="i" begin="1" end="9" step="1"> step="1"은 생략가능, 2면 2씩 증가
		
		String[] data = {"aaa", "bbb", "ccc", "ddd", "eee");
		for(int i=0; i<data.lenght; i++){
			System.out.println(data[i]);
		}
		
		for(String s:data){
			System.out.println(s);
		}
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>일반 Java사용 (구구단) </h3>
		<table border=1 width=600>
			<tr bgcolor="#ccccff">
				<%
					for(int i=2;i<=9;i++){
				%>
					<th><%= i+"단" %></th>
				<%	
					}
				%>
			</tr>
			<%
				for(int i=1;i<=9;i++){ //줄수
			%>
				<tr>
			<%
					for(int j=2;j<=9;j++){ //데이터 갯수
			%>
						<td><%= j+"*"+i+"="+(j*i) %></td>
			<%
					}
			%>
				</tr>
			<%
				}
			%>
		</table>
		
		<h3>JSTL사용 (구구단)</h3>
		<table border=1 width=600>
			<tr>
				<c:forEach var="i" begin="2" end="9"><th>${i}단</th></c:forEach>
			</tr>
				<c:forEach var="i" begin="1" end="9">
				<tr>
				<c:forEach var="j" begin="2" end="9">
					<td>${j}*${i}=${i*j}</td>
				</c:forEach>
				</tr>
				</c:forEach>
		</table>
		
	</center>

</body>
</html>