package com.model;

public class AddTracking 
{
	
	private Integer id;
	private String mode;
	private long courierid;
	private String intermediatelocation;
	private String deliverydate;
	private String reminder;
	private String status;
	private String message;
	public Integer getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	
	public long getCourierid() {
		return courierid;
	}
	public void setCourierid(long courierid) {
		this.courierid = courierid;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getIntermediatelocation() {
		return intermediatelocation;
	}
	public void setIntermediatelocation(String intermediatelocation) {
		this.intermediatelocation = intermediatelocation;
	}
	public String getDeliverydate() {
		return deliverydate;
	}
	public void setDeliverydate(String deliverydate) {
		this.deliverydate = deliverydate;
	}
	public String getReminder() {
		return reminder;
	}
	public void setReminder(String reminder) {
		this.reminder = reminder;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
