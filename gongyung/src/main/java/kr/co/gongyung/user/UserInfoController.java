package kr.co.gongyung.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/gogo/user")
@ResponseBody
public class UserInfoController {
	
	@Autowired
	private UserInfoService userService;
	
	@GetMapping(value = "/create", produces = "application/json")
	public int create(@RequestParam(name = "inputId") String id
					, @RequestParam(name = "inputPw") String password
					, @RequestParam(name = "nickName") String nickname) {
		int userId = userService.UserInfoCreate(id, password, nickname);
		
		return userId;
	}
	
	@GetMapping(value = "/idcheck", produces = "application/json")
	public int idCheck(@RequestParam(name = "inputId") String id) {
		return userService.UserInfoIdCheck(id);
	}

	@GetMapping(value = "/namecheck", produces = "application/json")
	public int nameCheck(@RequestParam(name = "inputName") String nickname) {
		return userService.UserInfoNameCheck(nickname);
	}
	
	@GetMapping(value = "/read", produces = "application/json")
	public UserInfo read(@RequestParam(name = "inputId") String id
						, @RequestParam(name = "inputPw") String password) {
		return userService.UserInfoRead(id, password);
	}
	
	@GetMapping(value = "/delete", produces = "application/json")
	public int delete(@RequestParam(name = "inputId") String id) {
		int userId = userService.UserInfoIdCheck(id);
		if (userId != 0) {
			userService.UserInfoDelete(id);
			return 1;
		}
		return 0;
	}
}
