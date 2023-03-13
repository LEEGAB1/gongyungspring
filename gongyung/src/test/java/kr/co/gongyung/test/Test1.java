package kr.co.gongyung.test;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.gongyung.config.DataSourceConfig;
import kr.co.gongyung.gasstation.Gasstation;
import kr.co.gongyung.gasstation.GasstationRepository;
import kr.co.gongyung.gasstation.GasstationRepositoryImpl;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { DataSourceConfig.class})
public class Test1 {
	
		
		@Autowired
		private GasstationRepositoryImpl GAS; 
		
	
		@Test
		public void testConnction() {
			List<Gasstation> result = GAS.gasStationSelect();
			assertEquals(373, result.size());
		}
	
	
	


}
