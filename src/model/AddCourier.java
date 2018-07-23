package com.model;

public class AddCourier 
{
	private int id;
	private long courierid;
	private String userEmail;
	private String mode;
	private String sourceaddress;
	private String sourcecity;
	private String destinationaddress;
	private String destinationcity;
	private int weight;
	private int quantity;
	
	
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getSourceaddress() {
		return sourceaddress;
	}
	public void setSourceaddress(String sourceaddress) {
		this.sourceaddress = sourceaddress;
	}
	public String getSourcecity() {
		return sourcecity;
	}
	public void setSourcecity(String sourcecity) {
		this.sourcecity = sourcecity;
	}
	public String getDestinationaddress() {
		return destinationaddress;
	}
	public void setDestinationaddress(String destinationaddress) {
		this.destinationaddress = destinationaddress;
	}
	public String getDestinationcity() {
		return destinationcity;
	}
	public void setDestinationcity(String destinationcity) {
		this.destinationcity = destinationcity;
	}
	
	public long getCourierid() {
		return courierid;
	}
	public void setCourierid(long courierid) {
		this.courierid = courierid;
	}
	
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
