package kr.co.gongyung.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ReviewService {
	@Autowired
	private ReviewRepository reviewRepo;
	
	@Transactional(readOnly = true)
	public List<Review> reviewSelect(){
		return reviewRepo.reviewSelect();
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public List<Review> reviewSelectByStoreName(String storeName){
		return reviewRepo.reviewSelectByStoreName(storeName);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public List<Review> reviewSelectBynickname(String nickname){
		return reviewRepo.reviewSelectBynickname(nickname);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public Review reviewSelectByPk(int pk) {
		return reviewRepo.reviewSelectByPk(pk);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int reviewdelete(int pk) {
		return reviewRepo.reviewdelete(pk);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int reviewInsert(Review review) {
		return reviewRepo.reviewInsert(review);
	}
}
