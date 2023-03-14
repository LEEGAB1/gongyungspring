package kr.co.gongyung.gasstation;

import java.util.List;
import java.util.Map;

import kr.co.gongyung.gasstation.model.Gasstation;
import kr.co.gongyung.gasstation.model.GasstationRank;

public interface GasstationRepository {
	List<Gasstation> gasStationSelect();
	List<Gasstation> gasStationSelectByRegion( String region);
	List<Gasstation> gasStationSelectByRegionAndZone( String region, String zone );
	List<Gasstation> gasStationSelectByStoreName( String storeName);
	List<GasstationRank> gasStationRank( String region, String type);
	List<Gasstation> gasStationXY();
	int gasStationUpdate( Gasstation gasstation, String region);
	int gasStationInsert( Gasstation gasstation);
	int gasHistoryInsert();

	List<String> oneWeekPrice(String storeName, String type);
}
