package kr.co.gongyung.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserInfoRepositoryImpl implements UserInfoRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int UserInfoSelectId(String id) {
		String sql = "SELECT COUNT(*) FROM user_info WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, Integer.class, id);
	 
	}

	@Override
	public int UserInfoSelectName(String nickname) {
		String sql = "select count(*) from user_info where nickname = ?";
		return jdbcTemplate.queryForObject(sql, Integer.class, nickname);
	}

	@Override
	public int InsertUserInfo(String id, String password, String nickname) {
		String sql = "insert into user_info (id, password, nickname) " + "values(?, ?, ?)";
		return jdbcTemplate.queryForObject(sql, Integer.class, id,password,nickname);
	}

	@Override
	public UserInfo selectUserInfo(String id, String password) {
		String sql = "SELECT * from user_info where id = ? && password = ? ";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<UserInfo>(UserInfo.class), id, password);
	}

	@Override
	public int deleteUserInfo(String id) {
		String sql = "DELETE FROM user_info WHERE id = ? ";
		return jdbcTemplate.queryForObject(sql, Integer.class, id);
		
	}

	@Override
	public String selectUserNickName(String id) {
		String sql = "SELECT nickname FROM user_info WHERE id = ? ";
		return jdbcTemplate.queryForObject(sql, String.class, id);
	}

}
