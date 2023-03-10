package kr.co.gongyung.parkinglot;

import java.util.List;

public interface ParkinglotRepository {
	List<Parkinglot> parkinglotSelect();
	List<Parkinglot> parkinglotselectByStoreName( String storeName);
	int parkinglotUpdate( Parkinglot parkinglot);
}
