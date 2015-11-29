package com.garin.dao;

import com.garin.models.Reserve;
import com.garin.models.User;
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

    public List<Reserve> getReserves() {
        return jdbcTemplate.query("SELECT * FROM RESERVES", new RowMapper<Reserve>() {
            @Override
            public Reserve mapRow(ResultSet resultSet, int i) throws SQLException {
                Reserve reserve = new Reserve();
                reserve.title = resultSet.getString("title");
                reserve.date = resultSet.getString("date");
                reserve.time = resultSet.getString("time");
                reserve.theater = resultSet.getString("theater");
                return reserve;
            }
        });
    }

    public void createReserves(String title, String date, String time,String theater) {
        String query = String.format("INSERT INTO RESERVES (title, date, time,theater) VALUES (%s,%s,%s,%s)", title, date, time, theater);
        jdbcTemplate.update(query);
    }
}
