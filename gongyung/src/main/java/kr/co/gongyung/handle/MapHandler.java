package kr.co.gongyung.handle;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapHandler {
	
	@GetMapping("/map")
	public String map() {
		return "map";
	}
}
