package com.metroteam.theifwatch.dao;

public class Comment {

	private String comment;
	private int id;
	private int stationID;
	private int usedID;
	
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStationID() {
		return stationID;
	}

	public void setStationID(int stationID) {
		this.stationID = stationID;
	}

	public int getUsedID() {
		return usedID;
	}

	public void setUsedID(int usedID) {
		this.usedID = usedID;
	}
}
