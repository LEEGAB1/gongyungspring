package kr.co.gongyung.user;

public class UserInfo {
	private String id;
	private String password;
	private String nickname;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public UserInfo(String id, String password, String nickname) {
		super();
		this.id = id;
		this.password = password;
		this.nickname = nickname;
	}
	public UserInfo() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", password=" + password + ", nickname=" + nickname + "]";
	}
	
	
	
}

