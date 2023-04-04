package com.board.member;

public class Member {
	
	private int mid, enabled;
	
	private String username, password, authority, name, email, tel, gender, birth, mdate;

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public Member(int mid, int enabled, String username, String password, String authority, String name, String email,
			String tel, String gender, String birth, String mdate) {
		this.mid = mid;
		this.enabled = enabled;
		this.username = username;
		this.password = password;
		this.authority = authority;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.gender = gender;
		this.birth = birth;
		this.mdate = mdate;
	}
	
	public Member() {
		
	}

}
