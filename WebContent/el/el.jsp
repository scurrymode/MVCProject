<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
		EL(표현언어: 브라우저 출력)
		<%= %>를 대신해서 사용
		1. 형식: ${exp}
			request.setAttribute("id", "admin");
			<%= request.getAttribute("id") %>
			${requestScope.id}
			requestScope. 생략가능
			
			<%=session.getAttribute("id", "admin") %>
			${sessionScope.id}
			
			<%= request.getParameter("id") %>
			${param.id}
			
		2. 연산자(대입연산자는 없음)
			- 산술연산자 ( +. -. *, / , %) 
				/가 실수다. 자바가 아니라서 ${5/2}하면 2.5가 나온다.
				산술은 숫자만 연산한다. 문자열 결합이 안된다.
				"10"+"20" 자바에서는 1020인데, ${"10"+"20"} 30이다.
				${null+10}도 10으로 처리한다. null은 0으로 취급한다.
				${5%2} ${5 mod 2}
				${5/2} ${5 div 2}
			- 논리연산자(true/false)
				&&(and)
				||(or)
			- 비교연산자
				== , != , < , > , <= , >=
				${sex=='남자'} 문자열이 별도로 없어서 equals가 아니라 ==으로 된다.
			- 삼항연산자
				조건 ? 값1 : 값2 true면 값1, false면 값2
			- empty 값(true/false)
			
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>