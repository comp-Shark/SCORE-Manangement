package edu.wtbu.service;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.dao.StudentDao;
import edu.wtbu.pojo.Result;

public class StudentService {

    // ��ȡѧ��������Ϣ
    public static Result getStudentInfo(String userId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> studentInfo = StudentDao.getStudentInfo(userId);
            if (!studentInfo.isEmpty()) {
                result.setFlag("success");
                result.setData(studentInfo.get(0)); // ���ص�һ�����
            } else {
                result.setFlag("fail");
                result.setData("ѧ����Ϣ������");
            }
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("��ȡѧ����Ϣʧ��: " + e.getMessage());
        }
        return result;
    }
    
    // ��ȡѧ���ɼ���Ϣ
    public static Result getStudentGrades(String studentId) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> grades = StudentDao.getStudentGrades(studentId);
            result.setFlag("success");
            result.setData(grades);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("��ȡ�ɼ�ʧ��: " + e.getMessage());
        }
        return result;
    }

    // ��������
    public static Result searchStudentGrades(String studentId, String searchKey) {
        Result result = new Result();
        try {
            List<HashMap<String, Object>> grades = StudentDao.searchStudentGrades(studentId, searchKey);
            result.setFlag("success");
            result.setData(grades);
        } catch (Exception e) {
            result.setFlag("fail");
            result.setData("�����ɼ�ʧ��: " + e.getMessage());
        }
        return result;
    }
}