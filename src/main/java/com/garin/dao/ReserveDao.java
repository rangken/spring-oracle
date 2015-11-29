package com.garin.dao;

import com.garin.models.Movie;
import com.garin.models.Reserve;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ReserveDao {
    @Autowired
    public JdbcTemplate jdbcTemplate;

    public List<Reserve> getReserves(int userId) {
        String sql = "SELECT * FROM RESERVES R, MOVIE M WHERE R.MOVIE_ID = M.ID AND R.USER_ID = " + userId + " ORDER BY R.ID DESC";
        return jdbcTemplate.query(sql, new RowMapper<Reserve>() {
            @Override
            public Reserve mapRow(ResultSet resultSet, int i) throws SQLException {
                Reserve reserve = new Reserve();
                reserve.movieId = resultSet.getInt("MOVIE_ID");
                reserve.movieDate = resultSet.getDate("MOVIE_DATE");
                reserve.theater = resultSet.getString("theater");
                Movie movie = new Movie();
                movie.id = resultSet.getInt("ID");
                movie.title = resultSet.getString("TITLE");
                movie.imgPath = resultSet.getString("IMG_PATH");
                movie.age = resultSet.getInt("AGE");
                movie.describe = resultSet.getString("DESCRIBE");
                reserve.movie = movie;
                return reserve;
            }
        });
    }

    public int createReserves(int userId, Integer movieId, String date, String time, String theater) {
        String dateStr = date + " " + time;
        String query = String.format("INSERT INTO RESERVES (ID, USER_ID, MOVIE_ID, MOVIE_DATE, THEATER) VALUES (ID.NEXTVAL, '%d','%d',to_date('%s', 'mm/dd hh24:mi'),'%s')", userId, movieId, dateStr, theater);
        return jdbcTemplate.update(query);
    }
}
