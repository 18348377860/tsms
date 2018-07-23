package com.guo.dao.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

import com.guo.dao.UserDao;
import com.guo.entity.User;
import com.guo.util.DBUtil;

public class UserDaoimp implements UserDao {
	
	private DBUtil db = DBUtil.getInstance();
	String sql = "";
	
	@Override
	public User Login(String username) {
		User user = null;
		sql = "select * from tb_user where username=?";
		List<Map<String, String>> list = db.query(sql, username);
		try {
			if (list.size() > 0) {
				user = new User();
				BeanUtils.populate(user, list.get(0));
			}
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
}
