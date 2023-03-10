package kr.co.gongyung.handle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapHandler {
	
	@GetMapping("/map")
	public String map() {
		return "map";
	}
}
