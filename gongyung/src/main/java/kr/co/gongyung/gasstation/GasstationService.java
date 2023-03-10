package kr.co.gongyung.gasstation;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class GasstationService  {
	@Autowired
	private GasstationRepository gasRepo;

	@Transactional(readOnly = true)
	public List<Gasstation> gasStationSelect() {
		return gasRepo.gasStationSelect();
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public List<Gasstation> gasStationSelectByRegion(String region) {
		return gasRepo.gasStationSelectByRegion(region);
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public List<Gasstation> gasStationSelectByRegionAndZone(String region, String zone) {
		return gasRepo.gasStationSelectByRegionAndZone(region, zone);
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public List<Gasstation> gasStationSelectByStoreName(String storeName) {
		return gasRepo.gasStationSelectByStoreName(storeName);
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public Map<String, Integer> gasStationPrice(String region, String type) {
		return gasRepo.gasStationPrice(region, type);
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public List<Gasstation> gasStationXY() {
		return gasRepo.gasStationXY();
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public int gasStationUpdate(Gasstation gasstation, String region) {
		return gasRepo.gasStationUpdate(gasstation, region);
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public int gasStationInsert(Gasstation gasstation) {
		return gasRepo.gasStationInsert(gasstation);
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public int gasHistoryInsert() {
		return gasRepo.gasHistoryInsert();
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public List<Gasstation> oneWeekPrice(String storeName, String type) {
		return gasRepo.oneWeekPrice(storeName, type);
	}
	
	
	
	

}
