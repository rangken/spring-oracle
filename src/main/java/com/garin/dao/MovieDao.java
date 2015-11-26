package com.garin.dao;

import com.garin.models.Movie;
import com.garin.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class MovieDao {
    @Autowired
    public JdbcTemplate jdbcTemplate;

    public List<Movie> getMovie() {
        return jdbcTemplate.query("SELECT * FROM MOVIE", new RowMapper<Movie>() {
            @Override
            public Movie mapRow(ResultSet resultSet, int i) throws SQLException {
                Movie movie = new Movie();
                movie.m_id = resultSet.getInt("m_id");
                movie.m_title = resultSet.getString("m_title");
                return movie;
            }
        });
    }
}
