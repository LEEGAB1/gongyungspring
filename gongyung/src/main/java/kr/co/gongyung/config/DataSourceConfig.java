package kr.co.gongyung.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;



@Configuration // 설정을 위한 클래스입니다를 알려준다.
@ComponentScan("kr.co.gongyung") 
public class DataSourceConfig {
	@Bean // 생성한 객체 빈으로 등록!
	public DataSource dataSource() {
		BasicDataSource ds = new BasicDataSource();
		ds.setUrl("jdbc:mysql://192.168.0.109/zerozerotwo");
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		ds.setUsername("user1");
		ds.setPassword("user1");
		
		return ds;
	}
	
	@Bean
	@Autowired //내가 만들지 않은친구들은 메소드로 작성을 하자 타입을 맞추고 이름으로 표현이  가능하다. 앞 타입 뒤 이름
	public JdbcTemplate jdbcTemplate(DataSource dataSource) { //우리가 만들지 않은 클래스를 빈으로 등록할때 
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		return jdbcTemplate;
		
	} 
	
	

	@Bean
	public void cros() {
	CorsConfiguration config = new CorsConfiguration();

	// Possibly...
	// config.applyPermitDefaultValues()

	config.setAllowCredentials(true);
	//https://domain1.com
	config.addAllowedOrigin("http://localhost:8080");
	config.addAllowedHeader("*");
	config.addAllowedMethod("*");

	UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
	source.registerCorsConfiguration("/**", config);

	CorsFilter filter = new CorsFilter(source);
	}
	

}
