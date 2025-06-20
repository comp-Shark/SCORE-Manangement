package edu.wtbu.dao;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.helper.MySqlHelper;

public class UserDao {
	//Login
 public static HashMap<String, Object> findByEmailAndPassword(String email,String password){
	String sql =  "SELECT * FROM user WHERE email = ? AND password = ?";
	List<HashMap<String, Object>> list = MySqlHelper.executeQuery(sql, new Object[] {email,password});
	if (list != null && list.size()>0) {
		return list.get(0);
    }else {
	    return null;
    }	 
 }
 public static List<HashMap<String, Object>> findByEmail(String email){
	 
	 String sql = "select * from user where email=?";
	 return MySqlHelper.executeQuery(sql, new Object[] {email});
 }
}
