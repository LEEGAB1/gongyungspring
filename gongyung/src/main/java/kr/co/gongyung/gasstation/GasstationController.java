package kr.co.gongyung.gasstation;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/gogo/gasstation")
@ResponseBody
public class GasstationController {
	@Autowired
	private GasstationService gasService;
	
	@GetMapping(produces = "application/json")
	public List<String> getXY() {
		List<Gasstation> gaslist = gasService.gasStationXY();
		List<String> list = new ArrayList<>();

		for (Gasstation gasstation : gaslist) {
			list.add(gasstation.getX());
			list.add(gasstation.getY());
		}
		
		return list;
	}
	
//	@GetMapping(produces = "application/json")
//	public String readGasstation(@RequestParam(name = "name") String storeName, @RequestParam(name = "type") String type) {
//		List<Gasstation> gaslist = gasService.gasStationSelectByStoreName(storeName);
//		String dieselprice = gaslist.get(0).getDiesel();
//		String gasolineprice = gaslist.get(0).getGasoline();
//		String region = gaslist.get(0).getRegion();
//		
//		Map<String, Integer> pricemap = gasService.gasStationPrice(region, type);
//	}
}
