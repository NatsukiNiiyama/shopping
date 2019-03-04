package jp.co.isol.form;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginForm implements Serializable {

	@NotEmpty
	@Size(max = 10)
	String userId;

	@NotEmpty
	@Size(max = 8)
	String password;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
