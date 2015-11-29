package com.garin.dao;

import com.garin.models.Movie;
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

    public List<Movie> getMovies() {
        return jdbcTemplate.query("SELECT * FROM MOVIE ORDER BY 1 ASC", new RowMapper<Movie>() {
            @Override
            public Movie mapRow(ResultSet resultSet, int i) throws SQLException {
                Movie movie = new Movie();
                movie.id = resultSet.getInt("ID");
                movie.title = resultSet.getString("TITLE");
                movie.imgPath = resultSet.getString("IMG_PATH");
                movie.age = resultSet.getInt("AGE");
                return movie;
            }
        });
    }

    public Movie getMovie(Integer id) {
        String query = "SELECT * FROM MOVIE WHERE \"id\"=" + id;
        return jdbcTemplate.queryForObject(query, new RowMapper<Movie>() {
            @Override
            public Movie mapRow(ResultSet resultSet, int i) throws SQLException {
                Movie movie = new Movie();
                movie.id = resultSet.getInt("ID");
                movie.title = resultSet.getString("TITLE");
                movie.imgPath = resultSet.getString("IMG_PATH");
                movie.age = resultSet.getInt("AGE");
                movie.describe = resultSet.getString("DESCRIBE");
                return movie;
            }
        });
    }
}
