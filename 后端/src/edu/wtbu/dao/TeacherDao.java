package edu.wtbu.dao;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.helper.MySqlHelper;

public class TeacherDao {

    // 获取教师个人信息（包含 userId 和 roleId）
    public static List<HashMap<String, Object>> getTeacherInfo(String JobId) {
        String sql = "SELECT t.JobId, t.Name, t.Gender, t.Department, t.phone, t.JoinDate AS hireDate, u.userId, u.roleId, u.email " +
                     "FROM teacher t " +
                     "LEFT JOIN user u ON t.JobId = u.JobId " +
                     "WHERE t.JobId = ?";

        return MySqlHelper.executeQuery(sql, new Object[]{JobId});
    }
 // 获取所有成绩信息（老师端）
    public static List<HashMap<String, Object>> getTeacherGradeList() {
        String sql = "SELECT g.id, g.StudentId, s.Name AS StudentName, g.CourseId, c.CourseName, class.ClassName, g.Grade " +
                "FROM gradeinfo_teacher g " +
                "JOIN course c ON g.CourseId = c.CourseId " +
                "JOIN student s ON g.StudentId = s.StudentId " +
                "JOIN class ON s.ClassId = class.id";

        return MySqlHelper.executeQuery(sql, null);
    }

    // 更新成绩
    public static int updateGrade(int gradeId, int newGrade) {
        String sql = "UPDATE gradeinfo_teacher SET Grade = ?, IsPass = CASE WHEN ? >= 60 THEN 'Yes' ELSE 'No' END WHERE id = ?";
        return MySqlHelper.executeUpdate(sql, new Object[]{newGrade, newGrade, gradeId});
    }
    
 // 获取所有成绩统计信息
    public static List<HashMap<String, Object>> getAllGradesStats() {
        String sql = "SELECT c.CourseId, c.CourseName, cl.ClassName, " +
                     "SUM(CASE WHEN g.IsPass = 'Yes' THEN 1 ELSE 0 END) AS PassCount " +
                     "FROM gradeinfo_teacher g " +
                     "JOIN course c ON g.CourseId = c.CourseId " +
                     "JOIN student s ON g.StudentId = s.StudentId " +
                     "JOIN class cl ON s.ClassId = cl.id " +
                     "GROUP BY c.CourseId, cl.ClassName";

        return MySqlHelper.executeQuery(sql, null);
    }
}