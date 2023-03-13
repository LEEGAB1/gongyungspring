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
		return jdbcTemplate.query("SELECT * FROM review WHERE storeName = ?", new BeanPropertyRowMapper<Review>(Review.class),storeName);
	}

	@Override
	public List<Review> reviewSelectBynickname(String nickname) {
		return jdbcTemplate.query("SELECT * FROM review WHERE nickname = ?", new BeanPropertyRowMapper<Review>(Review.class),nickname);
	}

	@Override
	public Review reviewSelectByPk(int pk) {
		return jdbcTemplate.queryForObject("SELECT * FROM review WHERE pk=?", new BeanPropertyRowMapper<Review>(Review.class),pk);
	}

	@Override
	public int reviewdelete(int pk) {
		return jdbcTemplate.update("DELETE FROM review WHERE pk =?"
				,pk);
	}

	@Override
	public int reviewInsert(Review review) {
		return jdbcTemplate.update("INSERT INTO review (storename, nickname, grade, userreview) values (?,?,?,?)"
				,review.getStorename()
				,review.getNickname()
				,review.getGrade()
				,review.getUserreview());
	}
	
	
}
