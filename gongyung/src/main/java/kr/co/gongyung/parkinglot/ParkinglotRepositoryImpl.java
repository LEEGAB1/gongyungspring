package kr.co.gongyung.parkinglot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.co.gongyung.gasstation.model.Gasstation;

@Repository
public class ParkinglotRepositoryImpl implements ParkinglotRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Parkinglot> parkinglotSelect() {
		return jdbcTemplate.query("SELECT * FROM parkinglot",new BeanPropertyRowMapper<Parkinglot>(Parkinglot.class));
	}

	@Override
	public List<Parkinglot> parkinglotselectByStoreName(String storeName) {
		return jdbcTemplate.query("SELECT * FROM parkinglot WHERE storename = ?",new BeanPropertyRowMapper<Parkinglot>(Parkinglot.class), storeName);
	}

	@Override
	public int parkinglotUpdate(Parkinglot parkinglot) {
		return jdbcTemplate.update("UPDATE parkinglot SET usenum=?, availablenum=? WHERE storename = ?"
				,parkinglot.getUsenum()
				,parkinglot.getAvailablenum()
				,parkinglot.getStorename());
	}

}
