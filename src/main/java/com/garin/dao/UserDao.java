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
		return jdbcTemplate.query("SELECT * FROM USERS", new RowMapper<User>() {
			@Override
			public User mapRow(ResultSet resultSet, int i) throws SQLException {
				User user = new User();
				user.name = resultSet.getString("NAME");
				user.age = resultSet.getInt("AGE");
				return user;
			}
		});
	}
}
