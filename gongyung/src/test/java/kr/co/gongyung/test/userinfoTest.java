package kr.co.gongyung.test;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.gongyung.config.DataSourceConfig;
import kr.co.gongyung.gasstation.GasstationRepositoryImpl;
import kr.co.gongyung.user.UserInfo;
import kr.co.gongyung.user.UserInfoRepositoryImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { DataSourceConfig.class})
public class userinfoTest {
	
	@Autowired
	private UserInfoRepositoryImpl USER;
	
	@Autowired
	private GasstationRepositoryImpl GAS; 
	

	@Test
	public void testConnction() {
		String result = USER.selectUserNickName("jinju123");
		assertEquals(result, "진주");
//		int result = USER.UserInfoSelectId("jinju123");
//		assertEquals(result, 1);
		
//		System.out.println(USER.selectUserInfo("jinju123", "jinju123"));
	}

}
