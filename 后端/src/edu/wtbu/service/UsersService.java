package edu.wtbu.service;

import java.util.HashMap;
import java.util.List;

import edu.wtbu.dao.UserDao;
import edu.wtbu.pojo.Result;

public class UsersService {

	//Login
	public static Result login(String email,String password) {
		
		Result result = new Result("faill", null, null);
		HashMap<String, Object> map = UserDao.findByEmailAndPassword(email, password);
		if (map != null) {
			result.setFlag("success");
			HashMap<String, Object> user = new HashMap<String, Object>();
			user.put("StudentId", map.get("StudentId"));
			user.put("UserId", map.get("UserId"));
			user.put("JobId", map.get("JobId"));
			user.put("Email", map.get("Email"));
			user.put("RoleId", map.get("RoleId"));
			result.setData(user);
			return result;
		}
			if(findByEmail(email)) {
				result.setData("ÃÜÂë´íÎó");
				return result;
			}
			result.setData("ÓÊÏä²»´æÔÚ");
			return result;
			}
		
		
	
	public static Boolean findByEmail(String email) {
		List<HashMap<String, Object>> map = UserDao.findByEmail(email);
		if (map != null && map.size()>0) {
			return true;
		}
		return false;
	}
}