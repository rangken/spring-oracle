package com.garin.dao;

import com.garin.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class UserDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;

	public List<User> getUsers() {
		return jdbcTemplate.query("SELECT * FROM USERS ORDER BY name DESC", new RowMapper<User>() {
			@Override
			public User mapRow(ResultSet resultSet, int i) throws SQLException {
				User user = new User();
				user.name = resultSet.getString("name");
				user.email = resultSet.getString("email");
				user.password = resultSet.getString("password");
				return user;
			}
		});
	}

	public void createUserTable() {
        jdbcTemplate.execute("CREATE TABLE SYSTEM.USERS (name VARCHAR(10), password VARCHAR(10), email VARCHAR(20))");
    }

    public void createUser(String name, String password, String email) {
        jdbcTemplate.update("INSERT INTO USERS (ID, NAME, PASSWORD, EMAIL) VALUES (ID.NEXTVAL, ?,?,?)", name, password, email);
    }
}
