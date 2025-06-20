package edu.wtbu.service;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.dao.TeacherDao;
import edu.wtbu.pojo.Result;

public class TeacherService {
	// 获取教师个人信息
    public static Result getTeacherInfo(String JobId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> teacherInfo = TeacherDao.getTeacherInfo(JobId);
            if (!teacherInfo.isEmpty()) {
                result.setFlag("success");
                result.setData(teacherInfo.get(0)); // 返回第一个结果
            } else {
                result.setFlag("fail");
                result.setData("教师信息不存在");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("获取教师信息失败: " + e.getMessage());
        }
        return result;
    }
 // 获取所有成绩信息（老师端）
    public static Result getTeacherGradeList() {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> grades = TeacherDao.getTeacherGradeList();
            result.setFlag("success");
            result.setData(grades);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("获取成绩失败: " + e.getMessage());
        }
        return result;
    }

    // 更新成绩
    public static Result updateGrade(int gradeId, int newGrade) {
        Result result = new Result();
        try {
            int rowsAffected = TeacherDao.updateGrade(gradeId, newGrade);
            if (rowsAffected > 0) {
                result.setFlag("success");
                result.setData("成绩更新成功");
            } else {
                result.setFlag("fail");
                result.setData("成绩更新失败");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("成绩更新失败: " + e.getMessage());
        }
        return result;
    }
    
    // 获取所有成绩统计信息
    public static Result getAllGradesStats() {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> gradesStats = TeacherDao.getAllGradesStats();
            result.setFlag("success");
            result.setData(gradesStats);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("获取成绩统计失败: " + e.getMessage());
        }
        return result;
    }
}
