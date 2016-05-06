package cn.t.serviceI;

import cn.t.entity.User;

public interface UserServiceI {
	public User getUserByEmail(String useremail);
	public User getUserById(Integer userid);
	public int insertUser(User user);
	public int changeUser(User user);
	public int delUserByEmail(String useremail);
	public int insertUserS(User user);
	public int changeUserByEmail(User user);
	

}
