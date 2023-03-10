package kr.co.gongyung.parkinglot;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class ParkinglotService {
	private ParkinglotRepository parkingRepo;
		
	@Transactional(readOnly = true)
	public List<Parkinglot> parkinglotSelect() {
		return parkingRepo.parkinglotSelect();
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public List<Parkinglot> parkinglotselectByStoreName(String storeName) {
		return parkingRepo.parkinglotselectByStoreName(storeName);
	}

	@Transactional (rollbackFor = RuntimeException.class)
	public int parkinglotUpdate(Parkinglot parkinglot) {
		return parkingRepo.parkinglotUpdate(parkinglot);
	}

}
