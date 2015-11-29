package com.garin.dao;

import com.garin.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.List;

@Repository
public class UserDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	private RowMapper<User> rowMapper = new RowMapper<User>() {
		@Override
		public User mapRow(ResultSet resultSet, int i) throws SQLException {
			User user = new User();
			user.id = resultSet.getInt("ID");
			user.name = resultSet.getString("NAME");
			user.email = resultSet.getString("EMAIL");
			user.password = resultSet.getString("PASSWORD");
			return user;
		}
	};

	public List<User> getUsers() {
		return jdbcTemplate.query("SELECT * FROM USERS ORDER BY name DESC", rowMapper);
	}

	public User getUser(String email) {
		String query = "SELECT * FROM USERS WHERE EMAIL='" + email +"'";
		try {
			return jdbcTemplate.queryForObject(query, rowMapper);
		} catch (DataAccessException e) {
			return null;
		}
	}

	public void createUserTable() {
        jdbcTemplate.execute("CREATE TABLE SYSTEM.USERS (name VARCHAR(10), password VARCHAR(10), email VARCHAR(20))");
    }

    public void createUser(String name, String password, String email) {
		jdbcTemplate.update("INSERT INTO USERS (ID, NAME, PASSWORD, EMAIL) VALUES (ID.NEXTVAL, ?,?,?)", name, password, email);
	}
}
