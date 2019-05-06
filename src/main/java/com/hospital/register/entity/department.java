package com.hospital.register.entity;

public class department {
	private int id;
	private int isregister;
	private int isvalid;
	private String departmentcode;
	private String departmentname;
	private String pinyincode;
	private String address;
	private String note;
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIsregister() {
		return isregister;
	}
	public void setIsregister(int isregister) {
		this.isregister = isregister;
	}
	public int getIsvalid() {
		return isvalid;
	}
	public void setIsvalid(int isvalid) {
		this.isvalid = isvalid;
	}
	public String getDepartmentcode() {
		return departmentcode;
	}
	public void setDepartmentcode(String departmentcode) {
		this.departmentcode = departmentcode;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public String getPinyincode() {
		return pinyincode;
	}
	public void setPinyincode(String pinyincode) {
		this.pinyincode = pinyincode;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}
