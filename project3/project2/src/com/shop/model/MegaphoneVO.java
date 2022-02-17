package com.shop.model;

import java.util.Date;

public class MegaphoneVO {
	private int midx;
	private String mname;
	private String mtitle;
	private String mcontent;
	private Date mregdate;
	private int mvisited;
	public int getMidx() {
		return midx;
	}
	public void setMidx(int midx) {
		this.midx = midx;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public Date getMregdate() {
		return mregdate;
	}
	public void setMregdate(Date mregdate) {
		this.mregdate = mregdate;
	}
	public int getMvisited() {
		return mvisited;
	}
	public void setMvisited(int mvisited) {
		this.mvisited = mvisited;
	}
	
}
