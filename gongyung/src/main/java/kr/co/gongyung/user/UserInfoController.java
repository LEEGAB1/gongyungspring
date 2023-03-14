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
	
	@PostMapping(value = "/login", consumes = "application/x-www-form-urlencoded")
	public UserInfo login(@RequestParam(name = "inputId") String id
					,@RequestParam(name = "inputPw") String pw) {
		UserInfo user = new UserInfo();
		if(userService.UserInfoRead(id, pw) != null) {
			user = userService.UserInfoRead(id, pw);
		}
		return user;
	}

	@PostMapping(value = "/create", consumes = "application/x-www-form-urlencoded")
	public String create(@RequestParam(name = "inputId") String id
					, @RequestParam(name = "inputPw") String pw
					, @RequestParam(name = "nickName") String nickname) {
		int okId = userService.UserInfoIdCheck(id);
		int okNickname = userService.UserInfoNameCheck(nickname);
		if(okId == 0 && okNickname == 0) {
			userService.UserInfoCreate(id, pw, nickname);
			return "성공";
		}
		
		return "{\"inputId\":" + okId + ",\"inputName\":" + okNickname + "}";			

		
	}
	

}
