package kr.co.gongyung.gasstation;

import java.util.List;
import java.util.Map;

public interface GasstationRepository {
	List<Gasstation> gasStationSelect();
	List<Gasstation> gasStationSelectByRegion( String region);
	List<Gasstation> gasStationSelectByRegionAndZone( String region, String zone );
	List<Gasstation> gasStationSelectByStoreName( String storeName);
	Map<String, Object> gasStationPrice( String region, String type);
	List<Gasstation> gasStationXY();
	int gasStationUpdate( Gasstation gasstation, String region);
	int gasStationInsert( Gasstation gasstation);
	int gasHistoryInsert();

	List<Gasstation> oneWeekPrice( String storeName, String type);
}
