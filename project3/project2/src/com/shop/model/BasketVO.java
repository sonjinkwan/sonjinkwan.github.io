package com.shop.model;

public class BasketVO {
	private String bid;
	private String cid;
	private String gcode;
	private int bcnt;
	private int validity;
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public int getBcnt() {
		return bcnt;
	}
	public void setBcnt(int bcnt) {
		this.bcnt = bcnt;
	}
	public int getValidity() {
		return validity;
	}
	public void setValidity(int validity) {
		this.validity = validity;
	}

	
}
