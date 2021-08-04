package Model;

public class MemberDTO {
	
	private String email;
	private String pw;
	private String name;
	private String tel;
	private String nickname;
	
	public MemberDTO() {}

	public MemberDTO(String email, String pw, String name, String tel, String nickname) {
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "MemberDTO [email=" + email + ", pw=" + pw + ", name=" + name + ", tel=" + tel + ", nickname=" + nickname
				+ "]";
	}

	

	
	
	
	
	
	
	

}
