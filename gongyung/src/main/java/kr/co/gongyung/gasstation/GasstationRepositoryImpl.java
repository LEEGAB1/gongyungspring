package kr.co.gongyung.gasstation;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;



@Repository 
public class GasstationRepositoryImpl  implements GasstationRepository{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Gasstation> gasStationSelect() {
		return jdbcTemplate.query("SELECT * FROM gas_station",new BeanPropertyRowMapper<Gasstation>(Gasstation.class));
	}

	@Override
	public List<Gasstation> gasStationSelectByRegion(String region) {
		return jdbcTemplate.query("SELECT * FROM gas_station WHERE region = ?",new BeanPropertyRowMapper<Gasstation>(Gasstation.class),region);
	}
	;
	@Override
	public List<Gasstation> gasStationSelectByRegionAndZone(String region, String zone) {
		return jdbcTemplate.query("SELECT * FROM gas_station WHERE region = ? AND zone = ?",new BeanPropertyRowMapper<Gasstation>(Gasstation.class),region,zone);
	}

	@Override
	public List<Gasstation> gasStationSelectByStoreName(String storeName) {
		return jdbcTemplate.query("SELECT * FROM gas_station WHERE storename LIKE ?",new BeanPropertyRowMapper<Gasstation>(Gasstation.class),storeName);
	}

	@Override
	public Map<String, Object> gasStationPrice(String region, String type) { //Integer 으로 에러가 나서 일단 Object 로 바꿈
		return jdbcTemplate.queryForMap( "SELECT storename, dense_rank() over (order by " + type + " asc) "
				+ "as ranking FROM gas_station WHERE region = ?" 
				, region);
		
	}

	@Override
	public List<Gasstation> gasStationXY() {
		return jdbcTemplate.query("SELECT X,Y FROM gas_station",new BeanPropertyRowMapper<Gasstation>(Gasstation.class));
	}

	@Override
	public int gasStationUpdate(Gasstation gasstation, String region) {
		return jdbcTemplate.update("UPDATE gas_station SET p_gasoline=?, gasoline=?, diesel =? WHERE storename=? and region=?"
				,gasstation.getP_gasoline()
				,gasstation.getGasoline()
				,gasstation.getDiesel()
				,gasstation.getStorename()
				,region);
	}

	@Override
	public int gasStationInsert(Gasstation gasstation) {
		String sql = "INSERT INTO gas_station "
				+ "(storename, storeaddress, storenumber, storebrand, self, p_gasoline, gasoline, diesel) "
				+ "values (?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql
					, gasstation.getStorename()
				    , gasstation.getStoreaddress()
					, gasstation.getStorenumber()
					, gasstation.getStorebrand()
					, gasstation.getSelf()
					, gasstation.getP_gasoline()
					, gasstation.getGasoline()
					, gasstation.getDiesel());
	}

	@Override
	public int gasHistoryInsert() {
		    LocalDate today = LocalDate.now();
		    String sql = "INSERT INTO gas_history (storename, storeaddress, p_gasoline, gasoline, diesel, date) " +
		                 "SELECT storename, storeaddress, p_gasoline, gasoline, diesel, ? FROM gas_station";
		    return jdbcTemplate.update(sql, today);
		
	}

	@Override
	public List<Gasstation> oneWeekPrice(String storeName, String type) {
		return jdbcTemplate.query("SELECT date, " + type +" FROM gas_history where storename = ? ORDER BY date desc limit 7",new BeanPropertyRowMapper<Gasstation>(Gasstation.class),storeName);
	}

}
