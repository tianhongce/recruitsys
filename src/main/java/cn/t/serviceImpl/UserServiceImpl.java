package cn.t.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.UserMapper;
import cn.t.entity.User;
import cn.t.serviceI.UserServiceI;

@Service("UserService")
public class UserServiceImpl implements UserServiceI {
	public UserMapper usermapper;

	public UserMapper getUsermapper() {
		return usermapper;
	}

	@Autowired
	public void setUsermapper(UserMapper usermapper) {
		this.usermapper = usermapper;
	}

	@Override
	public User getUserByEmail(String useremail) {
//		User user=usermapper.selectByEmail(useremail);
		return null;
	}

	@Override
	public User getUserById(Integer userid) {
		 User user=usermapper.selectByPrimaryKey(userid);
		return user;
	}

	@Override
	public int insertUser(User user) {
		return usermapper.insert(user);
	}

	@Override
	public int changeUser(User user) {
		
		return usermapper.updateByPrimaryKey(user);
	}

	@Override
	public int delUserByEmail(String useremail) {
//		return usermapper.deleteByEmail(useremail);
		return 0;
	}

	@Override
	public int insertUserS(User user) {
		return usermapper.insertSelective(user);
	}

	@Override
	public int changeUserByEmail(User user) {
//		return usermapper.updateByEmailSelective(user);
		return 0;
	}

	@Override
	public int delUserById(Integer id) {
		// TODO Auto-generated method stub
		return usermapper.deleteByPrimaryKey(id);
	}

	@Override
	public User getUSerByUsername(String username) {
		User user=usermapper.selectByUsername(username);
		return user;
	}


	

	

}
