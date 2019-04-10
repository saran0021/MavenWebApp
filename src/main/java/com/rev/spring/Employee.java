package com.rev.spring;

public class Employee {
	private int id;
	private String name;
	private String address;
	private float hike;
	private int salary;

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public float getHike() {
		return hike;
	}

	public void setHike(float hike) {
		this.hike = hike;
	}

	
}
