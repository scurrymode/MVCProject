<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
		EL(ǥ�����: ������ ���)
		<%= %>�� ����ؼ� ���
		1. ����: ${exp}
			request.setAttribute("id", "admin");
			<%= request.getAttribute("id") %>
			${requestScope.id}
			requestScope. ��������
			
			<%=session.getAttribute("id", "admin") %>
			${sessionScope.id}
			
			<%= request.getParameter("id") %>
			${param.id}
			
		2. ������(���Կ����ڴ� ����)
			- ��������� ( +. -. *, / , %) 
				/�� �Ǽ���. �ڹٰ� �ƴ϶� ${5/2}�ϸ� 2.5�� ���´�.
				����� ���ڸ� �����Ѵ�. ���ڿ� ������ �ȵȴ�.
				"10"+"20" �ڹٿ����� 1020�ε�, ${"10"+"20"} 30�̴�.
				${null+10}�� 10���� ó���Ѵ�. null�� 0���� ����Ѵ�.
				${5%2} ${5 mod 2}
				${5/2} ${5 div 2}
			- ��������(true/false)
				&&(and)
				||(or)
			- �񱳿�����
				== , != , < , > , <= , >=
				${sex=='����'} ���ڿ��� ������ ��� equals�� �ƴ϶� ==���� �ȴ�.
			- ���׿�����
				���� ? ��1 : ��2 true�� ��1, false�� ��2
			- empty ��(true/false)
			
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