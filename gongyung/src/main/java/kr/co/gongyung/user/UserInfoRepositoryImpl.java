package kr.co.gongyung.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.co.gongyung.gasstation.Gasstation;

@Repository
public class UserInfoRepositoryImpl implements UserInfoRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int UserInfoSelectId(String id) {
	int count = jdbcTemplate.queryForObject("SELECT COUNT(*) FROM user_info WHERE id = ?", new Object[]{id}, Integer.class);
	return count;
	 
	}

	@Override
	public int UserInfoSelectName(String name) {
		return 0;
	}

	@Override
	public int InsertUserInfo(String id, String pw, String name) {
		return 0;
	}

	@Override
	public UserInfo selectUserInfo(String id, String pw) {
		return null;
	}

	@Override
	public int deleteUserInfo(String id) {
		return 0;
	}

	@Override
	public String selectUserNickName(String id) {
		return null;
	}

}
