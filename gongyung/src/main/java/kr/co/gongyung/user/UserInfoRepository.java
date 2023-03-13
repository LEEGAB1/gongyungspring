package kr.co.gongyung.user;

public interface UserInfoRepository {
	int UserInfoSelectId(String id);
	int UserInfoSelectName(String nickname);
	int InsertUserInfo(String id, String password, String nickname);
	UserInfo selectUserInfo(String id, String password);
	int deleteUserInfo(String id);
	String selectUserNickName(String id);

}
