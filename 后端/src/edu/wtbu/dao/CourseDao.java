package edu.wtbu.dao;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.helper.MySqlHelper;

public class CourseDao {

    // 获取所有课程信息
    public static List<HashMap<String, Object>> getAllCourses(String studentId) {
        String sql = "SELECT c.CourseId, c.CourseName, c.CourseCredit, t.Name AS TeacherName, " +
                "CASE WHEN EXISTS(SELECT 1 FROM choice WHERE CourseId = c.CourseId AND StudentId = ?) THEN 1 ELSE 0 END AS IsSelected " +
                "FROM course c " +
                "JOIN teacher t ON c.TeacherJobId = t.JobId";

        return MySqlHelper.executeQuery(sql, new Object[]{studentId});
    }

    // 更新选课状态
    public static int updateCourseSelection(String courseId, String studentId, String status) {
        String sql = "INSERT INTO choice (StudentId, CourseId, ChoiceDate, ChoiceStatus) " +
                     "VALUES (?, ?, NOW(), ?) " +
                     "ON DUPLICATE KEY UPDATE ChoiceStatus = VALUES(ChoiceStatus)";
        return MySqlHelper.executeUpdate(sql, new Object[]{studentId, courseId, status,status});
    }
}