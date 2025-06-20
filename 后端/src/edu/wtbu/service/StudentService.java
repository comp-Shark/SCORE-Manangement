package edu.wtbu.service;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.dao.StudentDao;
import edu.wtbu.pojo.Result;

public class StudentService {

    // 获取学生个人信息
    public static Result getStudentInfo(String userId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> studentInfo = StudentDao.getStudentInfo(userId);
            if (!studentInfo.isEmpty()) {
                result.setFlag("success");
                result.setData(studentInfo.get(0)); // 返回第一个结果
            } else {
                result.setFlag("fail");
                result.setData("学生信息不存在");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("获取学生信息失败: " + e.getMessage());
        }
        return result;
    }
    
    // 获取学生成绩信息
    public static Result getStudentGrades(String studentId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> grades = StudentDao.getStudentGrades(studentId);
            result.setFlag("success");
            result.setData(grades);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("获取成绩失败: " + e.getMessage());
        }
        return result;
    }

    // 搜索功能
    public static Result searchStudentGrades(String studentId, String searchKey) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> grades = StudentDao.searchStudentGrades(studentId, searchKey);
            result.setFlag("success");
            result.setData(grades);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("搜索成绩失败: " + e.getMessage());
        }
        return result;
    }
}