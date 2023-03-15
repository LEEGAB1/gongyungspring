package kr.co.gongyung.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/gonggongyung/review")
@ResponseBody
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@GetMapping(produces = "application/json")
	public List<Review> getreview() {
		List<Review> reviewlist = reviewService.reviewSelect();
		return reviewlist;
	}
	
	@PostMapping(consumes = "application/x-www-form-urlencoded")
	public List<Review> readGasByThing(@RequestParam(name="username", required = false) String name
										,@RequestParam(name="storename", required = false) String storename){
		if(name != null) {
			List<Review> list = reviewService.reviewSelectBynickname(name);
			return list;
		} else if(storename != null) {
			List<Review> list = reviewService.reviewSelectByStoreName(storename);
			return list;
		}
		return null;
	}
}
