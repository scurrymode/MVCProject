package com.sist.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.Model;

/*
 * 		ListModel <-> list.jsp
 * 		UpdateModel <-> update.jsp
 * 		DeleteModel <-> delete.jsp
 * 		InsertModel	<-> insert.jsp
 * */


public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// http://localhost/MVCProject/DispatcherServlet?cmd=list
	private String[] strCmd={
			"list", "insert", "update", "delete"};
	
	// model mapping
	private String[] strCls={
			"com.sist.model.ListModel", "com.sist.model.InsertModel", "com.sist.model.UpdateModel", "com.sist.model.DeleteModel"};
	
	// xml�̸� <bean id="list" class="" jsp=""/> �̷������� �ҰŴ�. 
	// jsp mapping
	private String[] strJsp={
			"list.jsp", "insert.jsp", "update.jsp", "delete.jsp"};
	
	
	// ����
	private Map clsMap=new HashMap();
	private Map jspMap=new HashMap();
	
	
	//init�� ���� ��Ī�̳� �ʱ� ������ ���ش�.
	public void init(ServletConfig config) throws ServletException {
		try{
			for(int i=0; i<strCmd.length;i++){
				Class clsName=Class.forName(strCls[i]);
				Object obj = clsName.newInstance();
				clsMap.put(strCmd[i], obj);
				jspMap.put(strCmd[i], strJsp[i]);
			}
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			//����� ��û �ޱ�
			String cmd = request.getParameter("cmd");
			//Ŭ���� ã�� ���߿��� annotation�� ���� ã�� �� �ִ�.� Ŭ������ ã���� �������ִ� �Ŵ�. 
			Model model = (Model)clsMap.get(cmd);
			//���ó�� �� ������� �޾Ƴ���
			model.execute(request, response);
			//request�� jsp�� ����
			String jsp = (String)jspMap.get(cmd);
			//forward
			RequestDispatcher rd = request.getRequestDispatcher("view/"+jsp);
			rd.forward(request, response);			
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}

}
