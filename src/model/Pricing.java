package com.model;

public class Pricing {
	int p_id, Weight_from, Weight_to, Air_price, Railway_price, Car_price;
	char Grade;
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getWeight_from() {
		return Weight_from;
	}
	public void setWeight_from(int weight_from) {
		Weight_from = weight_from;
	}
	public int getWeight_to() {
		return Weight_to;
	}
	public void setWeight_to(int weight_to) {
		Weight_to = weight_to;
	}
	public int getAir_price() {
		return Air_price;
	}
	public void setAir_price(int air_price) {
		Air_price = air_price;
	}
	
	public int getRailway_price() {
		return Railway_price;
	}
	public void setRailway_price(int railway_price) {
		Railway_price = railway_price;
	}
	public int getCar_price() {
		return Car_price;
	}
	public void setCar_price(int car_price) {
		Car_price = car_price;
	}
	public char getGrade() {
		return Grade;
	}
	public void setGrade(char grade) {
		Grade = grade;
	}
	
	
}
