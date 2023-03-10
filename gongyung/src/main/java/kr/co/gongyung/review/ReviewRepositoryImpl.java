package kr.co.gongyung.review;

import java.sql.Connection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewRepositoryImpl implements ReviewRepository{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Review> reviewSelect() {
		return jdbcTemplate.query("SELECT * FROM review", new BeanPropertyRowMapper<Review>(Review.class));
	}

	@Override
	public List<Review> reviewSelectByStoreName(String storeName) {
		return jdbcTemplate.query("SELECT * FROM review WHERE storeNAme Like ?", new BeanPropertyRowMapper<Review>(Review.class),storeName);
	}

	@Override
	public List<Review> reviewSelectBynickname(String nickname) {
		return null;
	}

	@Override
	public Review reviewSelectByPk(int pk) {
		return null;
	}

	@Override
	public int reviewdelete(int pk) {
		return 0;
	}

	@Override
	public int reviewInsert(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
