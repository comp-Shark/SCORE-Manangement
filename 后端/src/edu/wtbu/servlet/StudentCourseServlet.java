package edu.wtbu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import edu.wtbu.pojo.Result;
import edu.wtbu.service.CourseService;

/**
 * Servlet implementation class StudentCourseServlet
 */
@WebServlet("/getAllCourses")
public class StudentCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentCourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html;charset=utf-8");
	        String studentId = request.getParameter("studentId");

	        Result result = CourseService.getAllCourses(studentId);
	        String msg = JSON.toJSONString(result);
	        response.getWriter().append(msg);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	@WebServlet("/updateCourseSelection")
	public class UpdateCourseSelectionServlet extends HttpServlet {
	    private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        response.setContentType("text/html;charset=utf-8");
	        String courseId = request.getParameter("courseId");
	        String studentId = request.getParameter("studentId");
	        String status = request.getParameter("status");

	        Result result = CourseService.updateCourseSelection(courseId, studentId, status);
	        String msg = JSON.toJSONString(result);
	        response.getWriter().append(msg);
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doPost(request, response);
	    }
	}
}
