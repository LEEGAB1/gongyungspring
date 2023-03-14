package kr.co.gongyung.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserInfoService {
	
	@Autowired
	private UserInfoRepository repository;
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int UserInfoIdCheck(String id) {
		return repository.UserInfoSelectId(id);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int UserInfoNameCheck(String nickname) {
		return repository.UserInfoSelectName(nickname);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int UserInfoCreate(String id, String password, String nickname) {
		return repository.InsertUserInfo(id, password, nickname);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public UserInfo UserInfoRead(String id, String password) {
		return repository.selectUserInfo(id, password);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int UserInfoDelete(String id) {
		return repository.deleteUserInfo(id);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public String UserInfoNickName(String id) {
		return repository.selectUserNickName(id);
	}
}
