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
	
	// xml이면 <bean id="list" class="" jsp=""/> 이런식으로 할거다. 
	// jsp mapping
	private String[] strJsp={
			"list.jsp", "insert.jsp", "update.jsp", "delete.jsp"};
	
	
	// 저장
	private Map clsMap=new HashMap();
	private Map jspMap=new HashMap();
	
	
	//init은 보통 매칭이나 초기 세팅을 해준다.
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
			//사용자 요청 받기
			String cmd = request.getParameter("cmd");
			//클래스 찾기 나중에는 annotation을 통해 찾을 수 있다.어떤 클래스를 찾을지 구분해주는 거다. 
			Model model = (Model)clsMap.get(cmd);
			//기능처리 후 결과값을 받아내기
			model.execute(request, response);
			//request를 jsp로 전송
			String jsp = (String)jspMap.get(cmd);
			//forward
			RequestDispatcher rd = request.getRequestDispatcher("view/"+jsp);
			rd.forward(request, response);			
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}

}
