package com.garin.models;

import java.util.Date;

public class Reserve {
	public Integer movieId;
	public Date movieDate;
	public String theater;
	public Movie movie;

	public Integer getMovieId() {
		return movieId;
	}

	public Date getMovieDate() {
		return movieDate;
	}

	public String getTheater() {
		return theater;
	}

	public Movie getMovie() {
		return movie;
	}
}
