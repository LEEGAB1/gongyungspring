package kr.co.gongyung.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserInfoService {
	
	@Autowired
	private UserInfoRepository repository;
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int UserInfoSelectId(String id) {
		return repository.UserInfoSelectId(id);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int UserInfoSelectName(String nickname) {
		return repository.UserInfoSelectName(nickname);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int InsertUserInfo(String id, String password, String nickname) {
		return repository.InsertUserInfo(id, password, nickname);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public UserInfo selectUserInfo(String id, String password) {
		return repository.selectUserInfo(id, password);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public int deleteUserInfo(String id) {
		return repository.deleteUserInfo(id);
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public String selectUserNickName(String id) {
		return repository.selectUserNickName(id);
	}
}
