package kr.co.gongyung.review;

import java.util.List;

public interface ReviewRepository {
	List<Review> reviewSelect();
	List<Review> reviewSelectByStoreName(String storeName);
	List<Review> reviewSelectBynickname(String nickname);
	Review reviewSelectByPk(int pk);
	int reviewdelete(int pk);
	int reviewInsert(Review review);
	
}
