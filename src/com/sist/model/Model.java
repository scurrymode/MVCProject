package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Model {
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception;

}
