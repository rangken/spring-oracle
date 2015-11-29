package com.garin.models;

import java.util.List;

public class User {
	public String name;
	public String email;
	public String password;
	public List<Reserve> reserves;
	public int id;

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}
}
