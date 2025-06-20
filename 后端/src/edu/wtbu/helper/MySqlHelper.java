package edu.wtbu.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MySqlHelper {
	private static Connection conn = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;
	
        private static String url = "jdbc:mysql://localhost:3306/grade?serverTimezone=GMT%2B8&useOldAliasMetadataBehavior=true";
	private static String user = "root";
	private static String password = "123456";
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
		
	public static List<HashMap<String, Object>> executeQuery(String sql,Object[] params){
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			if(params!=null) {
				for(int i=0;i<params.length;i++) {
					pstmt.setObject(i+1, params[i]);											
				}	
			}			
			rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int count = rsmd.getColumnCount();
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				for(int i=0;i<count;i++) {
					map.put(rsmd.getColumnLabel(i+1), rs.getObject(i+1));//   ñ   
				}
				list.add(map);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return list;
	}
	// > 0 �޸ĳɹ�
	public static int executeUpdate(String sql,Object[] params) {
		int result = 0 ;
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);			
			if(params!=null) {
				for(int i=0;i<params.length;i++) {
					pstmt.setObject(i+1, params[i]);											
				}	
			}
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return result;
	}
	
	public static void closeAll() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}