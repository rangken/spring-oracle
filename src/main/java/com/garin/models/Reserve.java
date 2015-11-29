package com.garin.models;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class Reserve {
	public Integer movieId;
	public Date movieDate;
	public String theater;
	public Movie movie;
	public static final SimpleDateFormat FORMAT = new SimpleDateFormat("yyyy-MM-dd hh:mm");

	public Integer getMovieId() {
		return movieId;
	}

	public Date getMovieDate() {
		return movieDate;
	}

	public String getMovieDateStr() {
		return FORMAT.format(movieDate);
	}

	public String getTheater() {
		return theater;
	}

	public Movie getMovie() {
		return movie;
	}
}
