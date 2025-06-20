package edu.wtbu.dao;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.helper.MySqlHelper;

public class StudentDao {

    // ��ȡѧ��������Ϣ������ userId �� roleId��
    public static List<HashMap<String, Object>> getStudentInfo(String studentId) {
        String sql = "SELECT s.StudentId, s.Name, s.Gender, s.BirthDate, s.phone, c.ClassName, u.userId, u.roleId, u.email " +
                     "FROM student s " +
                     "LEFT JOIN class c ON s.ClassId = c.id " +
                     "LEFT JOIN user u ON s.StudentId = u.StudentId " +
                     "WHERE s.StudentId = ?";

        return MySqlHelper.executeQuery(sql, new Object[]{studentId});
    }
    
 // ��ȡѧ���ɼ���Ϣ
    public static List<HashMap<String, Object>> getStudentGrades(String studentId) {
        String sql = "SELECT c.CourseId, c.CourseName, g.Grade, g.IsPass " +
                     "FROM gradeinfo_student g " +
                     "JOIN course c ON g.CourseId = c.CourseId " +
                     "WHERE g.StudentId = ?";

        return MySqlHelper.executeQuery(sql, new Object[]{studentId});
    }

    // ��������
    public static List<HashMap<String, Object>> searchStudentGrades(String studentId, String searchKey) {
        String sql = "SELECT c.CourseId, c.CourseName, g.Grade, g.IsPass " +
                     "FROM gradeinfo_student g " +
                     "JOIN course c ON g.CourseId = c.CourseId " +
                     "WHERE g.StudentId = ? AND (c.CourseName LIKE ? OR c.CourseId LIKE ?)";

        return MySqlHelper.executeQuery(sql, new Object[]{studentId, "%" + searchKey + "%", "%" + searchKey + "%"});
    }
}