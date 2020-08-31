package com.in28minutes.jee;

public class UserValidationService {
	public boolean isUserValid(String user, String password) {
		return user.equals("bengt") && password.equals("frithiofsson");
	}
}
