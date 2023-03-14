package kr.co.gongyung.gasstation;

public class GasstationRank {
	private String storename;
	private String ranking;

	public GasstationRank() {
		super();
	}

	public GasstationRank(String storename, String ranking) {
		super();
		this.storename = storename;
		this.ranking = ranking;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getRanking() {
		return ranking;
	}

	public void setRanking(String ranking) {
		this.ranking = ranking;
	}

	@Override
	public String toString() {
		return "GasstationRank [storename=" + storename + ", ranking=" + ranking + "]";
	}




	
	
	
}
