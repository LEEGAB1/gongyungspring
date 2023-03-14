package kr.co.gongyung.gasstation;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/gogo/gasstation")
@ResponseBody
public class GasstationController {
	private static final Logger logger = LoggerFactory.getLogger(GasstationController.class);
	@Autowired
	private GasstationService gasService;
	
	@GetMapping(value = "/XY", produces = "application/json")
	public List<String> getXY() {
		List<Gasstation> gaslist = gasService.gasStationXY();
		List<String> list = new ArrayList<>();

		for (Gasstation gasstation : gaslist) {
			list.add(gasstation.getX());
			list.add(gasstation.getY());
		}
		
		return list;
	}
	
	@GetMapping(value = "/price", produces = "application/json")
	public GasstationPriceInfo readGasstation(@RequestParam(name = "name") String storeName, @RequestParam(name = "type") String type) throws JsonProcessingException {
		List<Gasstation> gaslist = gasService.gasStationSelectByStoreName(storeName);
		GasstationPriceInfo priceinfo = new GasstationPriceInfo();
		
		priceinfo.setStorename(storeName);
		priceinfo.setDieselprice(gaslist.get(0).getDiesel());
		priceinfo.setGasolineprice(gaslist.get(0).getGasoline());
		priceinfo.setRegion(gaslist.get(0).getRegion());
		
		List<GasstationRank> gasranklist = gasService.gasStationRank(priceinfo.getRegion(), type);
		for (GasstationRank gasstationRank : gasranklist) {
			if(gasstationRank.getStorename().equals(storeName))
				priceinfo.setRanking(gasstationRank.getRanking());
		}
		
		List<String> oneweekprice = gasService.oneWeekPrice(storeName, type);
		ObjectMapper mapper = new ObjectMapper();
		String pricelistjson = mapper.writeValueAsString(oneweekprice);

		priceinfo.setOneweek(pricelistjson);

		return priceinfo;
	}
	
	@PostMapping(consumes = "application/x-www-form-urlencoded")
	public List<Gasstation> readGas(@RequestParam(name="guSelect") String region
						,@RequestParam(name="dongSelect", required = false) String zone) {
		if(region != null && zone == null) {
			List<Gasstation> list = gasService.gasStationSelectByRegion(region);
			return list;
		} else if (region != null && zone != null) {
			List<Gasstation> list = gasService.gasStationSelectByRegionAndZone(region, zone);
			return list;
		}
		return null;
	}
}
