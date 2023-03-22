package kr.co.gongyung.gasstation.model;

import java.util.List;

public class GasstationPriceInfo {
	String storename;
	String region;
	String dieselprice;
	String gasolineprice;
	String ranking;
	List<String> oneweek;
	
	public GasstationPriceInfo() {
		super();
	}

	public GasstationPriceInfo(String storename, String region, String dieselprice, String gasolineprice,
			String ranking, List<String> oneweek) {
		super();
		this.storename = storename;
		this.region = region;
		this.dieselprice = dieselprice;
		this.gasolineprice = gasolineprice;
		this.ranking = ranking;
		this.oneweek = oneweek;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getDieselprice() {
		return dieselprice;
	}

	public void setDieselprice(String dieselprice) {
		this.dieselprice = dieselprice;
	}

	public String getGasolineprice() {
		return gasolineprice;
	}

	public void setGasolineprice(String gasolineprice) {
		this.gasolineprice = gasolineprice;
	}

	public String getRanking() {
		return ranking;
	}

	public void setRanking(String ranking) {
		this.ranking = ranking;
	}

	public List<String> getOneweek() {
		return oneweek;
	}

	public void setOneweek(List<String> oneweek) {
		this.oneweek = oneweek;
	}

	@Override
	public String toString() {
		return "GasstationPriceInfo [storename=" + storename + ", region=" + region + ", dieselprice=" + dieselprice
				+ ", gasolineprice=" + gasolineprice + ", ranking=" + ranking + ", oneweek=" + oneweek + "]";
	}
	
	
	
	
}
