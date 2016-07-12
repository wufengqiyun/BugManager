package com.bm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bm.model.BugInputModel;
import com.bm.service.bugservice;


public class BugInputServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public BugInputServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("你好");
		String bugFinder=request.getParameter("bug_Finder");
		String bugTime=request.getParameter("bug_Time");
		String bugName=request.getParameter("bug_Name");
		String bugFrom=request.getParameter("bug_From");
		String bugFromv=request.getParameter("bug_Fromv");
		String bugLevel=request.getParameter("bug_Level");
		String bugType=request.getParameter("bug_Type");
		String bugDesc=request.getParameter("bug_Desc");
		
		BugInputModel bugInputModel =new BugInputModel();
		bugInputModel.setBug_Finder(bugFinder);
		bugInputModel.setBug_Time(bugTime);
		bugInputModel.setBug_Name(bugName);
		bugInputModel.setBug_From(bugFrom);
		bugInputModel.setBug_Fromv(bugFromv);
		bugInputModel.setBug_Level(bugLevel);
		bugInputModel.setBug_Type(bugType);
		bugInputModel.setBug_Desc(bugDesc);
		
//		if (new problemservice().addProblem(probleminfosevlet)) {
//			response.sendRedirect("../success.jsp?state=input");
//		}
//		else {
//			response.sendRedirect("../inputinfo.jsp");
		if (new bugservice().addBug(bugInputModel)) {
			response.sendRedirect("../success.jsp?state=input");
		}
		else {
			response.sendRedirect("../success.jsp?state=fail");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
