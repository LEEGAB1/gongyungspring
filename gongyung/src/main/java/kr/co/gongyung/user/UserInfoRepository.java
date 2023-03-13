package kr.co.gongyung.user;

public interface UserInfoRepository {
	int UserInfoSelectId(String id);
	int UserInfoSelectName(String name);
	int InsertUserInfo(String id, String pw, String name);
	UserInfo selectUserInfo(String id, String pw);
	int deleteUserInfo(String id);
	String selectUserNickName(String id);

}
