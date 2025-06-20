package edu.wtbu.service;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.dao.TeacherDao;
import edu.wtbu.pojo.Result;

public class TeacherService {
	// ��ȡ��ʦ������Ϣ
    public static Result getTeacherInfo(String JobId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> teacherInfo = TeacherDao.getTeacherInfo(JobId);
            if (!teacherInfo.isEmpty()) {
                result.setFlag("success");
                result.setData(teacherInfo.get(0)); // ���ص�һ�����
            } else {
                result.setFlag("fail");
                result.setData("��ʦ��Ϣ������");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("��ȡ��ʦ��Ϣʧ��: " + e.getMessage());
        }
        return result;
    }
 // ��ȡ���гɼ���Ϣ����ʦ�ˣ�
    public static Result getTeacherGradeList() {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> grades = TeacherDao.getTeacherGradeList();
            result.setFlag("success");
            result.setData(grades);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("��ȡ�ɼ�ʧ��: " + e.getMessage());
        }
        return result;
    }

    // ���³ɼ�
    public static Result updateGrade(int gradeId, int newGrade) {
        Result result = new Result();
        try {
            int rowsAffected = TeacherDao.updateGrade(gradeId, newGrade);
            if (rowsAffected > 0) {
                result.setFlag("success");
                result.setData("�ɼ����³ɹ�");
            } else {
                result.setFlag("fail");
                result.setData("�ɼ�����ʧ��");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("�ɼ�����ʧ��: " + e.getMessage());
        }
        return result;
    }
    
    // ��ȡ���гɼ�ͳ����Ϣ
    public static Result getAllGradesStats() {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> gradesStats = TeacherDao.getAllGradesStats();
            result.setFlag("success");
            result.setData(gradesStats);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("��ȡ�ɼ�ͳ��ʧ��: " + e.getMessage());
        }
        return result;
    }
}
