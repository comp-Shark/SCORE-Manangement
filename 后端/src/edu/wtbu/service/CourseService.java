package edu.wtbu.service;

import java.util.List;
import java.util.HashMap;

import edu.wtbu.dao.CourseDao;
import edu.wtbu.pojo.Result;

public class CourseService {

    // ��ȡ���пγ���Ϣ
    public static Result getAllCourses(String studentId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> courses = CourseDao.getAllCourses(studentId);
            result.setFlag("success");
            result.setData(courses);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("��ȡ�γ�ʧ��: " + e.getMessage());
        }
        return result;
    }

 // ����ѡ��״̬
    public static Result updateCourseSelection(String courseId, String studentId, String status) {
        Result result = new Result();
        try {
            int rowsAffected = CourseDao.updateCourseSelection(courseId, studentId, status);
            if (rowsAffected > 0) {
                result.setFlag("success");
                result.setData("ѡ��״̬���³ɹ�");
            } else {
                result.setFlag("fail");
                result.setData("ѡ��״̬����ʧ��");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("ѡ��״̬����ʧ��: " + e.getMessage());
        }
        return result;
    }
}