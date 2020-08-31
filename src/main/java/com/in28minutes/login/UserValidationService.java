package com.in28minutes.login;

public class UserValidationService {
	public boolean isUserValid(String user, String password) {
		return user.equals("bengt") && password.equals("12345");
	}
}
