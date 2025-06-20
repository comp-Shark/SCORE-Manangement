package edu.wtbu.service;

import java.util.List;
import java.util.HashMap;

import edu.wtbu.dao.CourseDao;
import edu.wtbu.pojo.Result;

public class CourseService {

    // 获取所有课程信息
    public static Result getAllCourses(String studentId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> courses = CourseDao.getAllCourses(studentId);
            result.setFlag("success");
            result.setData(courses);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("获取课程失败: " + e.getMessage());
        }
        return result;
    }

 // 更新选课状态
    public static Result updateCourseSelection(String courseId, String studentId, String status) {
        Result result = new Result();
        try {
            int rowsAffected = CourseDao.updateCourseSelection(courseId, studentId, status);
            if (rowsAffected > 0) {
                result.setFlag("success");
                result.setData("选课状态更新成功");
            } else {
                result.setFlag("fail");
                result.setData("选课状态更新失败");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("选课状态更新失败: " + e.getMessage());
        }
        return result;
    }
}