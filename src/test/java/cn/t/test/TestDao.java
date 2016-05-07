package cn.t.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.t.entity.User;
import cn.t.serviceI.UserServiceI;

public class TestDao {

	@Test
	public void test1() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				new String[] { "applicationContext.xml" });
		UserServiceI userservice = (UserServiceI) ac.getBean("UserService");
		User u1 = userservice.getUserById(1);
		System.out.println(u1.getUsername());
//		User user1 = new User();
//		user1.setUseremail("111@c.c");
//		user1.setUsername("111");
//		user1.setUserpwd("111");
//		System.out.println(user1);
//		userservice.insertUserS(user1);

//		User user2 = new User();
//		user2.setUseremail("333@c.c");
//		user2.setUsername("333");
//		user2.setUserpwd("333");
//		userservice.insertUser(user2);
		
		User user3 = new User();
		user3.setUseremail("333@c.c");
		user3.setUsername("333");
		user3.setUserpwd("3");
		user3.setUserid(3);
		userservice.changeUser(user3);
//		userservice.insertUser(user2);
//		userservice.changeUserByEmail(user3);
//		userservice.getUserByEmail("333@c.c");
//		userservice.delUserByEmail("333@c.c");
		System.out.println(userservice.getUserById(2).getUsername());
		userservice.delUserById(3);
		System.out.println(userservice.getUSerByUsername("tian").getUserpwd());
		

	}
}
