package cn.t.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.t.entity.Position;
import cn.t.serviceI.EducationServiceI;
import cn.t.serviceI.PositionServiceI;
import cn.t.serviceI.UserResumeAllServiceI;

public class TestDao {

	@Test
	public void test1t() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				new String[] { "applicationContext.xml" });
		EducationServiceI eduservice = (EducationServiceI) ac.getBean("EducationService");
//		ResumeServiceI resuservice = (ResumeServiceI) ac.getBean("ResumeService");
//		AdminUserServiceI adminuserservice = (AdminUserServiceI) ac.getBean("AdminUserService");
		UserResumeAllServiceI urasi = (UserResumeAllServiceI) ac.getBean("UserResumeAllService");
		PositionServiceI positionservice=(PositionServiceI) ac.getBean("PositionService");
		
//		UserServiceI userservice = (UserServiceI) ac.getBean("UserService");
//		User u1 = userservice.getUserById(1);
//		System.out.println(u1.getUsername());
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
		
//		User user3 = new User();
//		user3.setUseremail("333@c.c");
//		user3.setUsername("333");
//		user3.setUserpwd("3");
//		user3.setUserid(3);
//		userservice.changeUser(user3);
////		userservice.insertUser(user2);
////		userservice.changeUserByEmail(user3);
////		userservice.getUserByEmail("333@c.c");
////		userservice.delUserByEmail("333@c.c");
//		System.out.println(userservice.getUserById(2).getUsername());
//		userservice.delUserById(3);
//		System.out.println(userservice.getUSerByUsername("tian").getUserpwd());
		
//		System.out.println(eduservice.getEducationByUserid(1));
		
//		AdminUser au=adminuserservice.getAdminUserById("3");
//		System.out.println(au);
//		Resume resu=new Resume();
//		resu.setPhone("111111");
//		resu.setUserid(1);
//		resuservice.addResume(resu);
//		System.out.println(urasi.getUserAllMsg());
//		System.out.println(adminuserservice.getAllAdminUser());
		Map param = new HashMap();
		param.put("posname", "");
		param.put("company", "");
		param.put("dept", "");
		param.put("place", "北京");
		List<Position> list =positionservice.getByPosnameOrCompanyOrDeptOrPlace(param);
		System.out.println(list);

	}
}
